//
//  SecondViewController.m
//  ViewControllerEffects
//
//  Created by liwei on 2017/2/24.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - button action

- (IBAction)buttonAction:(id)sender {
    ThirdViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"ThirdStoryboardId"];
    //[self.navigationController pushViewController:controller animated:YES];
    
    [self addChildViewController:controller];
    controller.view.frame = CGRectMake(500, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:controller.view];
    
    [UIView animateWithDuration:0.25
                          delay:0
                        options:UIViewAnimationOptionTransitionNone
                     animations:^{
                         CGRect frame = controller.view.frame;
                         frame.origin.x = 0;
                         controller.view.frame = frame;
                     } completion:^(BOOL finished) {
                         
                         
                         [self didMoveToParentViewController:controller];
                     }];
}

- (IBAction)closeButtonAction:(id)sender {
    [self removeFromParentViewController];
    [self.view removeFromSuperview];
}

@end
