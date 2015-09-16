//
//  AppDelegate.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DemoTableViewController;
@class DemoFactory;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong , nonatomic) DemoTableViewController *mTableVC;
/** NavigationBar */
@property (strong, nonatomic) UINavigationController *mNaviController;

@property (nonatomic , strong) DemoFactory *mDemoFactory;

@end

