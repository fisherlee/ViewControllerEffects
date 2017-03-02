//
//  SecondViewController.h
//  ViewControllerEffects
//
//  Created by liwei on 2017/2/24.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (nonatomic ,weak) IBOutlet UIButton *button;

- (IBAction)buttonAction:(id)sender;
- (IBAction)closeButtonAction:(id)sender;

@end
