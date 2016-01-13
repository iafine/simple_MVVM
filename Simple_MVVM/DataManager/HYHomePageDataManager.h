//
//  HYHomePageDataManager.h
//  Simple_MVVM
//
//  处理主页上的所有数据相关的处理
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Recipe;

@interface HYHomePageDataManager : NSObject

@property (strong, nonatomic) NSArray<Recipe *> *recipes;

/**
 *  请求食谱数据
 *
 *  @return 返回食谱集
 */
- (void)requestRecipeDataWhenSuccess:(void (^)())success fail:(void (^)(NSError *))fail;

@end
