//
//  XXBaseViewController.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/9/15.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XXBaseViewController : UIViewController

#pragma mark - hook methods
- (void)beforeInitHook;
- (void)afterInitHook;

#pragma mark - abstract methods
- (void)initEnvironment;
- (void)initUI;
- (void)initWindow;
@end
