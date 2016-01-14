//
//  HYHomePageTableCellViewModel.m
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import "HYHomePageTableCellViewModel.h"
#import "Recipe.h"

@implementation HYHomePageTableCellViewModel

+ (HYHomePageTableCellViewModel *)viewModelWithRecipe:(Recipe *)recipe{
    
    HYHomePageTableCellViewModel *vm = [[HYHomePageTableCellViewModel alloc] init];
    vm.avatarURL = recipe.recipeAlbum;
    vm.title = recipe.recipeTitle;
    vm.desc = recipe.recipeDesc;
    vm.titleColor = [UIColor redColor];
    return vm;
}
@end
