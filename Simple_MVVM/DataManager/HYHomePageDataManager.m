//
//  HYHomePageDataManager.m
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import "HYHomePageDataManager.h"
#import <AFNetworking/AFNetworking.h>
#import "Recipe.h"

@implementation HYHomePageDataManager

- (instancetype)init{
    self = [super init];
    if (self) {
        self.recipes = [[NSArray alloc] init];
    }
    return self;
}

- (void)requestRecipeDataWhenSuccess:(void (^)())success fail:(void (^)(NSError *))fail{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *url = @"http://apis.juhe.cn/cook/query";
    NSDictionary *dic = @{@"key" : @"ece65c27ede91b57c652f30b59ed5dcd",
                          @"menu" : @"炒鸡蛋",};
    [manager POST:url parameters:dic success:^(NSURLSessionTask *task, id responseObj){
        [self generateRecipeWithResponseData:responseObj];
        success();
    } failure:^(NSURLSessionTask *task, NSError *error){
        NSLog(@"error:  %@", error);
        fail(error);
    }];
}

// 加工获取到的数据
- (void)generateRecipeWithResponseData:(id)responseObj{
    if ([responseObj isKindOfClass:[NSDictionary class]]) {
        NSDictionary *responseDic = (NSDictionary *)responseObj;
        NSDictionary *resultDic = responseDic[@"result"];
        NSArray *dataArr = resultDic[@"data"];
        NSMutableArray *recipeArr = [[NSMutableArray alloc] init];
        for (NSDictionary *dic in dataArr) {
            Recipe *recipe = [[Recipe alloc] init];
            recipe.recipeId = dic[@"id"];
            recipe.recipeTitle = dic[@"title"];
            recipe.recipeTags = dic[@"tags"];
            recipe.recipeDesc = dic[@"imtro"];
            recipe.recipeAlbum = dic[@"albums"][0];
            [recipeArr addObject:recipe];
        }
        self.recipes = recipeArr;
    }
}

- (NSArray<Recipe *> *)recipes{
    if (!_recipes) {
        _recipes = [[NSArray alloc] init];
    }
    return _recipes;
}
@end
