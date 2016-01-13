//
//  HYHomePageViewModel.h
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HYHomePageTableCellViewModel;
@class Recipe;

@interface HYHomePageTableViewModel : NSObject

@property (strong, nonatomic) NSArray<HYHomePageTableCellViewModel *> *cellViewModels;

@property (strong, nonatomic) UIColor *backgroundColor;

/**
 *  根据食谱集来创建相应的ViewModel
 *
 *  @param recipes 食谱集
 *
 *  @return 返回HYHomePageTableView对应的ViewModel
 */
+ (HYHomePageTableViewModel *)viewModelWithRecipes:(NSArray<Recipe *> *)recipes;

@end
