//
//  ABCAnimation.m
//  ViewControllerEffects
//
//  Created by liwei on 2017/2/24.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "ABCAnimator.h"

@implementation ABCAnimator

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.6;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    //UIViewController *toController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    //UIViewController *fromController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    [[transitionContext containerView] addSubview:toView];
    
    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    
    toView.alpha = 0;
    
    if (_transition == ABCPushAnimatorTransitionToScale) {
        [UIView animateWithDuration:[self transitionDuration:transitionContext]
                         animations:^{
                             fromView.transform = CGAffineTransformMakeScale(0.1, 0.1);
                             toView.alpha = 1;
                         } completion:^(BOOL finished) {
                             fromView.transform = CGAffineTransformIdentity;
                             [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                         }];
    }
    if (_transition == ABCPopAnimatorTransitionToScale) {
        [UIView animateWithDuration:[self transitionDuration:transitionContext]
                         animations:^{
                             fromView.transform = CGAffineTransformMakeRotation(90);
                             toView.alpha = 1;
                         } completion:^(BOOL finished) {
                             fromView.transform = CGAffineTransformIdentity;
                             [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                         }];
    }
    

    

}

@end
