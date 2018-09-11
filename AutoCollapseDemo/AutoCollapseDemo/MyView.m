//
//  MyView.m
//  AutoCollapseDemo
//
//  Created by 刘小二 on 2018/9/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

#import "MyView.h"
IB_DESIGNABLE
@implementation MyView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setBgColor:(UIColor *)bgColor {
    self.backgroundColor = bgColor;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        [self setupView];
    }
    return self;
}

- (void)setupView {
    UILabel *newl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    newl.backgroundColor = [UIColor redColor];
    newl.text = @"111";
    [self addSubview:newl];
}




@end
