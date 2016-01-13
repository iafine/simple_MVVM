//
//  HYHomePageCellTableViewCell.m
//  Simple_MVVM
//
//  Created by hyyy on 16/1/13.
//  Copyright © 2016年 hyyy. All rights reserved.
//

#import "HYHomePageCellTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "HYHomePageTableCellViewModel.h"

@interface HYHomePageCellTableViewCell(){
}
@property (strong, nonatomic) UIImageView *recipeAvatar;
@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *descLabel;

@end

@implementation HYHomePageCellTableViewCell

#pragma mark - life cycle
- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.recipeAvatar];
        [self addSubview:self.titleLabel];
        [self addSubview:self.descLabel];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - private method
- (void)bindDataWithViewModel:(HYHomePageTableCellViewModel *)viewModel{
    [self.recipeAvatar sd_setImageWithURL:[NSURL URLWithString:viewModel.avatarURL]];
    self.titleLabel.text = viewModel.title;
    self.titleLabel.textColor = viewModel.titleColor;
    self.descLabel.text = viewModel.desc;
}

#pragma mark - setters and getters
- (UIImageView *)recipeAvatar{
    if (_recipeAvatar == nil) {
        _recipeAvatar = [[UIImageView alloc] initWithFrame:CGRectMake(5, 10, 40, 40)];
    }
    return _recipeAvatar;
}

- (UILabel *)titleLabel{
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 5, 120, 30)];
        _titleLabel.textColor = [UIColor redColor];
        _titleLabel.font = [UIFont systemFontOfSize:13];
    }
    return _titleLabel;
}

- (UILabel *)descLabel{
    if (_descLabel == nil) {
        _descLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 40, 200, 30)];
        _descLabel.textColor = [UIColor grayColor];
        _descLabel.font = [UIFont systemFontOfSize:12];
    }
    return _descLabel;
}
@end
