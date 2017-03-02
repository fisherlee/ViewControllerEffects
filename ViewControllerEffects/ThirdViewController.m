//
//  ThirdViewController.m
//  ViewControllerEffects
//
//  Created by liwei on 2017/2/24.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - button action
- (IBAction)backButtonAction:(id)sender {
    
    [UIView animateWithDuration:0.25
                          delay:0
                        options:UIViewAnimationOptionTransitionNone
                     animations:^{
                         self.view.transform = CGAffineTransformMakeTranslation(500, 0);
                     } completion:^(BOOL finished) {
                         self.view.transform = CGAffineTransformIdentity;
                         [self removeFromParentViewController];
                         [self.view removeFromSuperview];
                     }];
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
