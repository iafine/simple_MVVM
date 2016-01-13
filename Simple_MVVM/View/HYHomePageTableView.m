//
//  HYHomePageTableView.m
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import "HYHomePageTableView.h"
#import "HYHomePageCellTableViewCell.h"
#import "HYHomePageTableCellViewModel.h"
#import "HYHomePageTableViewModel.h"

@interface HYHomePageTableView()<UITableViewDataSource, UITableViewDelegate>{
    UITableView *_tableView;
}

@end
@implementation HYHomePageTableView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [self addSubview:_tableView];
    }
    return self;
}

- (void)bindDataWithViewModel:(HYHomePageTableViewModel *)viewModel{
    self.tableViewModel = viewModel;
    self.backgroundColor = viewModel.backgroundColor;
    [_tableView reloadData];
    //更新UI约束
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.tableViewModel.cellViewModels.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HYHomePageCellTableViewCell *cell = nil;
    static NSString *identifier = @"cell";
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[HYHomePageCellTableViewCell alloc] init];
    }
    HYHomePageTableCellViewModel *vm = self.tableViewModel.cellViewModels[indexPath.row];
    [cell bindDataWithViewModel:vm];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.delegate homePageTableView:self didSelectedRowAtIndexPath:indexPath];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
