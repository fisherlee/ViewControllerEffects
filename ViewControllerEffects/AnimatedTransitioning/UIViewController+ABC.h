//
//  UIViewController+Swizzling.h
//  ViewControllerEffects
//
//  Created by liwei on 2017/2/24.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ABC)<UINavigationControllerDelegate>

@property (nonatomic, strong) NSNumber *time_interval;
@property (nonatomic, strong) NSNumber *animator_type;


@end
