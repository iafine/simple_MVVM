//
//  HYHomePageTableCellViewModel.h
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Recipe;

@interface HYHomePageTableCellViewModel : NSObject

@property (strong, nonatomic) NSString *avatarURL;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) UIColor *titleColor;
@property (strong, nonatomic) NSString *desc;

/**
 *  根据相应的食谱返回相应的ViewModel
 *
 *  @param recipe 食谱
 *
 *  @return 单个食谱的ViewModel
 */
+ (HYHomePageTableCellViewModel *)viewModelWithRecipe:(Recipe *)recipe;

@end
