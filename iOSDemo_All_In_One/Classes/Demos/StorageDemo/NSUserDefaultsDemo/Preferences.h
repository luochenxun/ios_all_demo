//
//  Preferences.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/9/15.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Preferences : NSObject

FUNC_INTERCAFE_SINGLETON(Preferences);

- (NSUserDefaults *)getDefaultPrefs;
- (NSUserDefaults *)getPrefsByUserName:(NSString *)userName;

@end
