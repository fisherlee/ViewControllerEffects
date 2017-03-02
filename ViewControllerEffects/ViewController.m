//
//  ViewController.m
//  ViewControllerEffects
//
//  Created by liwei on 2017/2/24.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ABCAnimator.h"

@interface ViewController ()<UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UINavigationControllerDelegate
//- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
//    
//    if (operation == UINavigationControllerOperationPush) {
//        ABCAnimator *animator = [[ABCAnimator alloc] init];
//        animator.transition = ABCPushAnimatorTransitionToScale;
//        return animator;
//    }
//    if (operation == UINavigationControllerOperationPop) {
//        ABCAnimator *animator = [[ABCAnimator alloc] init];
//        animator.transition = ABCPopAnimatorTransitionToScale;
//        return animator;
//    }
//    
//    return nil;
//}

#pragma mark -  button action
- (IBAction)wirteButtonAction:(id)sender {
    SecondViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondStoryId"];
    //[self.navigationController pushViewController:controller animated:YES];
    
    [self addChildViewController:controller];
    controller.view.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 400 - 64, self.view.frame.size.width, 400);
    [self.view addSubview:controller.view];
    
    
    [self didMoveToParentViewController:controller];
}



#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RootCellId" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"abcd %@", @(indexPath.row)];
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {


}



@end
