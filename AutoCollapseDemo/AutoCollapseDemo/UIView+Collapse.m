//
//  UIView+Collapse.m
//  AutoCollapseDemo
//
//  Created by 刘小二 on 2018/9/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

#import "UIView+Collapse.h"
#import <objc/runtime.h>

@implementation NSLayoutConstraint(Collapse)

- (CGFloat)originalConstraintConstant {
#if CGFLOAT_IS_DOUBLE
    return [objc_getAssociatedObject(self, _cmd) doubleValue];
#else
    return [objc_getAssociatedObject(self, _cmd) floatValue];
#endif
}
- (void)setOriginalConstraintConstant: (CGFloat)originalConstant {
    objc_setAssociatedObject(self, @selector(originalConstraintConstant), @(originalConstant), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end

@implementation UIView (Collapse)
+ (void)load {
    Method originalMethod = class_getInstanceMethod([self class], @selector(setValue:forKey:));
    Method myMethod = class_getInstanceMethod([self class], @selector(my_setValue:forKey:));
    method_exchangeImplementations(originalMethod, myMethod);
}

- (void)setMy_collapse:(BOOL)my_collapse {
    objc_setAssociatedObject(self, @selector(isMy_collapse), @(my_collapse), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self.my_constraint enumerateObjectsUsingBlock:^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL * _Nonnull stop) {
        if (my_collapse) {
            constraint.constant = 0;
        }else {
            constraint.constant = constraint.originalConstraintConstant;
        }
    }];
}

- (BOOL)isMy_collapse {
   return [objc_getAssociatedObject(self, _cmd) boolValue];
}


- (void)my_setValue:(id)value forKey:(NSString *)key {
    [self my_setValue:value forKey:key];
}

- (void)setMy_constraint:(NSArray *)my_constraint {
    objc_setAssociatedObject(self, @selector(my_constraint), my_constraint, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [my_constraint enumerateObjectsUsingBlock:^(NSLayoutConstraint* constraint, NSUInteger idx, BOOL * _Nonnull stop) {
        constraint.originalConstraintConstant = constraint.constant;
    }];
}

- (NSArray *)my_constraint {
    return objc_getAssociatedObject(self, _cmd);
}

@end
