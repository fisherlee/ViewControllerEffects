//
//  ABCAnimation.m
//  ViewControllerEffects
//
//  Created by liwei on 2017/2/24.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "ABCAnimator.h"

@implementation ABCAnimator

- (id)initWithTimeInterval:(double)interval {
    self = [super init];
    if (self) {
        self.interval = interval;
    }
    return self;
}

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return _interval;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
 
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    [[transitionContext containerView] addSubview:toView];
    
    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    
    if (_transition == ABCPushAnimatorTransitionToScale) {
        toView.alpha = 1;
        toView.transform = CGAffineTransformMakeScale(0, 0);

        [UIView animateWithDuration:[self transitionDuration:transitionContext]
                         animations:^{
                             toView.transform = CGAffineTransformMakeScale(1, 1);
                         } completion:^(BOOL finished) {
                             fromView.alpha = 0;
                             toView.transform = CGAffineTransformIdentity;
                             [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                         }];
    }
    if (_transition == ABCPopAnimatorTransitionToScale) {
        fromView.transform = CGAffineTransformMakeScale(1, 1);
        [UIView animateWithDuration:[self transitionDuration:transitionContext]
                         animations:^{
                             fromView.transform = CGAffineTransformMakeScale(0.05, 0.05);
                             toView.alpha = 1;
                         } completion:^(BOOL finished) {
                             fromView.transform = CGAffineTransformIdentity;
                             [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                         }];
    }
  

    

}

@end
