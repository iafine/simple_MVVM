//
//  HYHomePageCellTableViewCell.h
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HYHomePageTableCellViewModel;

@interface HYHomePageCellTableViewCell : UITableViewCell

@property (strong, nonatomic) HYHomePageTableCellViewModel *cellViewModel;

- (void)bindDataWithViewModel:(HYHomePageTableCellViewModel *)viewModel;

@end
