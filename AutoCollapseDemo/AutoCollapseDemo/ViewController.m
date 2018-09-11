//
//  ViewController.m
//  AutoCollapseDemo
//
//  Created by 刘小二 on 2018/9/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Collapse.h"
@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *my_view;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [UIView animateWithDuration:2 delay:0 usingSpringWithDamping:100 initialSpringVelocity:0.8 options:UIViewAnimationOptionCurveLinear animations:^{
        self.my_view.my_collapse = !self.my_view.my_collapse;
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
