//
//  UIView+Collapse.h
//  AutoCollapseDemo
//
//  Created by 刘小二 on 2018/9/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, MyVisibity) {
    MyVisibityHidden,
    MyVisibityShow,
    MyVisibityGone
};


@interface UIView (Collapse)
@property (nonatomic, assign, getter=isMy_collapse) IBInspectable BOOL  my_collapse;
@property (nonatomic, strong) IBOutletCollection(NSLayoutConstraint) NSArray *my_constraint;
@end
