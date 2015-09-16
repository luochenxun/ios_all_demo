//
//  AppDelegateModule.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/4.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "AppDelegateModule.h"

@implementation AppDelegateModule

// ------------- Impletement Methods -------------
#pragma mark - Impletement Methods

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initEnvironment];
    [self initUI];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

// ------------- Init Methods -------------
#pragma mark - Init Methods

/** init the Environment */
- (void)initEnvironment {
    // Tips: Init environment methods
}

/** Init the ui:
 * Init the baseWindow , and let it visible*/
- (void)initUI {
    // Tips: Init UI methods
}

@end
