//
//  HYHomePageTableView.h
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HYHomePageTableViewModel;
@class HYHomePageTableView;

@protocol HYHomePageTableViewDelegate <NSObject>

/**
 *  点击row时的操作
 *
 *  @param tableView tableView
 *  @param indexPath inddexPath
 */
- (void)homePageTableView:(HYHomePageTableView *)tableView didSelectedRowAtIndexPath:(NSIndexPath *)indexPath;

@end
@interface HYHomePageTableView : UIView

@property (strong, nonatomic) HYHomePageTableViewModel *tableViewModel;
@property (weak, nonatomic) id<HYHomePageTableViewDelegate> delegate;

- (void)bindDataWithViewModel:(HYHomePageTableViewModel *)viewModel;

@end
