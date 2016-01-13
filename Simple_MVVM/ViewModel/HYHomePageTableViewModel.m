//
//  HYHomePageViewModel.m
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import "HYHomePageTableViewModel.h"
#import "HYHomePageTableCellViewModel.h"

@implementation HYHomePageTableViewModel

+ (HYHomePageTableViewModel *)viewModelWithRecipes:(NSArray<Recipe *> *)recipes{
    HYHomePageTableViewModel *vm = [[HYHomePageTableViewModel alloc] init];
    NSMutableArray *cellViewModelArr = [[NSMutableArray alloc] init];
    for (Recipe *recipe in recipes) {
        HYHomePageTableCellViewModel *vm = [HYHomePageTableCellViewModel viewModelWithRecipe:recipe];
        [cellViewModelArr addObject:vm];
    }
    vm.cellViewModels = cellViewModelArr;
    vm.backgroundColor = [UIColor whiteColor];
    return vm;
}
@end
