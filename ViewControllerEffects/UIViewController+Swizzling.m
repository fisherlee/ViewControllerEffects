//
//  UIViewController+Swizzling.m
//  ViewControllerEffects
//
//  Created by liwei on 2017/2/24.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "UIViewController+Swizzling.h"
#import <objc/runtime.h>

@implementation UIViewController (Swizzling)

#pragma mark -  load
+ (void)load {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        SEL origin_sel = @selector(viewDidLoad);
        SEL new_sel = @selector(ctr_viewDidLoad);
        Method origin_method = class_getInstanceMethod([self class], origin_sel);
        Method new_method = class_getInstanceMethod([self class], new_sel);
        
        BOOL add = class_addMethod([self class], origin_sel, method_getImplementation(new_method), method_getTypeEncoding(new_method));
        if (add) {
            class_replaceMethod([self class], new_sel, method_getImplementation(origin_method), method_getTypeEncoding(origin_method));
        }else {
            method_exchangeImplementations(origin_method, new_method);
        }
    });
}

- (void)ctr_viewDidLoad {
    NSString *cls = NSStringFromClass([self class]);
    NSLog(@"cls: %@", cls);
    
    if ([cls isEqualToString:@"UINavigationController"]) {
        
    }
}

@end
