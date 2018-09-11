//
//  TableViewCell.m
//  AutoCollapseDemo
//
//  Created by 刘小二 on 2018/9/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

#import "TableViewCell.h"

IB_DESIGNABLE
@implementation TableViewCell


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    
        [self setupViews];
    
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupViews];
}

- (void)setupViews {
    self.backgroundColor = [UIColor redColor];
    
    UILabel *myLabel = [UILabel new];
    myLabel.text = @"你大会可兑换daskhdkajshdjkahsdjhsakkhdksjahdkjsahjkdahskjdhkashdjkhasjkdhasjkhdksahdjkasjdhkjasdk好dasdd";
    myLabel.numberOfLines = 0;
    myLabel.textColor = [UIColor redColor];
    myLabel.backgroundColor = [UIColor blueColor];
    [self addSubview: myLabel];
    [myLabel sizeToFit];
    myLabel.frame = CGRectMake(5, 0, CGRectGetWidth(self.frame) - 10, [myLabel sizeThatFits:CGSizeMake(CGRectGetWidth(self.frame), MAXFLOAT)].height);
    
    UIImageView *imageV = [UIImageView new];
//    imageV.image = [UIImage imageNamed:@"粉丝" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
    imageV.image = [UIImage imageNamed:@"粉丝"];
    imageV.frame = CGRectMake(0, 100, 40, 40);
    [self addSubview:imageV];
    
}
- (void)prepareForInterfaceBuilder {
     [self setupViews];
    [super prepareForInterfaceBuilder];
}
@end
