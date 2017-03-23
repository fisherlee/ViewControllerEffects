//
//  DetailViewController.m
//  ViewControllerEffects
//
//  Created by liwei on 2017/3/23.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 
- (IBAction)backAction:(id)sender {
    self.animator_type = @(ABCPopAnimatorTransitionToScale);
    [self.navigationController popViewControllerAnimated:YES];
}


@end
