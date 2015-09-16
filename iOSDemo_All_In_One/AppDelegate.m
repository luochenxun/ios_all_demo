//
//  AppDelegate.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "AppDelegate.h"
#import "DemoFactory.h"
#import "DemoModel.h"
#import "DemoTableViewController.h"

@interface AppDelegate ()



@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initEnvironment];
    [self initUI];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


#pragma mark ------------- inner methods -------------

#pragma mark - Init Methods

/** init the Environment */
-(void)initEnvironment{
    self.mDemoFactory = [DemoFactory sharedInstance];
}


/** init the ui:
 * Init the baseWindow , and let it visible*/
-(void)initUI{
    // init BaseWindow
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [ self.window makeKeyAndVisible ];
    
    /*  init rootViewController */
    self.mTableVC = [[DemoTableViewController alloc] initWithDemo:self.mDemoFactory];
    
    /* init navigation bar controller */
    self.mNaviController = [[UINavigationController alloc] initWithRootViewController:self.mTableVC];
    self.window.rootViewController = self.mNaviController;
}

@end
