//
//  myTableViewCell.m
//  AutoCollapseDemo
//
//  Created by 刘小二 on 2018/9/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

#import "myTableViewCell.h"
#import "TableViewCell.h"
IB_DESIGNABLE
@implementation myTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    UILabel *label = [UILabel new];
    label.text = @"11";
    label.textColor = [UIColor redColor];
    [label sizeToFit];
//    [self addSubview:label];
    
    TableViewCell *ta = [[TableViewCell alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [self.contentView addSubview:ta];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        TableViewCell *ta = [[TableViewCell alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
        [self.contentView addSubview:ta];
    }
    return self;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
