//
//  Recipe.h
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

// 菜谱id
@property (strong, nonatomic) NSNumber *recipeId;
// 菜谱标题
@property (strong, nonatomic) NSString *recipeTitle;
// 菜谱标签
@property (strong, nonatomic) NSArray *recipeTags;
// 菜谱描述
@property (strong, nonatomic) NSString *recipeDesc;
// 菜谱原料
@property (strong, nonatomic) NSString *recipeIngredients;
// 菜谱辅料
@property (strong, nonatomic) NSString *recipeBurden;
// 菜谱展示图
@property (strong, nonatomic) NSString *recipeAlbum;

@end
