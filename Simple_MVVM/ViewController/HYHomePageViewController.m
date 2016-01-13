//
//  HYHomePageViewController.m
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import "HYHomePageViewController.h"
#import "HYHomePageDataManager.h"
#import "HYHomePageTableView.h"
#import "HYHomePageTableViewModel.h"

@interface HYHomePageViewController ()<HYHomePageTableViewDelegate>{
}

@property (strong, nonatomic) HYHomePageTableView *tableView;
@property (strong, nonatomic) HYHomePageDataManager *dataManager;

@end

@implementation HYHomePageViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
    [self.view addSubview:self.tableView];
    [self fetchRecipeData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - HYHomePageTableViewDelegate
- (void)homePageTableView:(HYHomePageTableView *)tableView didSelectedRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@", indexPath);
}
#pragma mark - private method
// 获取食谱数据
- (void)fetchRecipeData{
    [self.dataManager requestRecipeDataWhenSuccess:^(){
        if (self.dataManager.recipes.count > 0) {
            [self renderRecipeView];
        }
    } fail:^(NSError *error){
    }];
}

// 装配食谱视图
- (void)renderRecipeView{
    HYHomePageTableViewModel *vm = [HYHomePageTableViewModel viewModelWithRecipes:self.dataManager.recipes];
    [self.tableView bindDataWithViewModel:vm];
}

#pragma mark - getters and setters
- (HYHomePageTableView *)tableView{
    if (_tableView == nil) {
        CGSize screenSize = [UIScreen mainScreen].bounds.size;
        _tableView = [[HYHomePageTableView alloc] initWithFrame:CGRectMake(0, 0, screenSize.width, screenSize.height)];
        _tableView.delegate = self;
    }
    return _tableView;
}

- (HYHomePageDataManager *)dataManager{
    if (_dataManager == nil) {
        _dataManager = [[HYHomePageDataManager alloc] init];
    }
    return _dataManager;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
