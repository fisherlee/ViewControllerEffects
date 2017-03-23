//
//  ABCAnimation.h
//  ViewControllerEffects
//
//  Created by liwei on 2017/2/24.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ABCAnimatorTransition) {
    ABCPushAnimatorTransitionToScale = 1000,
    ABCPushAnimatorTransitionToFilp,
    ABCPushAnimatorTransitionToSwipe,
    ABCPushAnimatorTransitionToOT,
    ABCPopAnimatorTransitionToScale,
    ABCPopAnimatorTransitionToFilp,
    ABCPopAnimatorTransitionToSwipe,
    ABCPopAnimatorTransitionToOT
};


@interface ABCAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) double interval;
@property (nonatomic, assign) NSInteger transition;

- (id)initWithTimeInterval:(double)interval;

@end
