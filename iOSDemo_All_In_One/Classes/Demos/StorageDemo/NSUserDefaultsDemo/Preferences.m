//
//  Preferences.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/9/15.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "Preferences.h"

@implementation Preferences

FUNC_IMPLEMENT_SINGLETON(Preferences);

- (NSUserDefaults *)getDefaultPrefs {
  return [NSUserDefaults standardUserDefaults];
}

- (NSUserDefaults *)getPrefsByUserName:(NSString *)userName {
  return [[NSUserDefaults alloc] initWithSuiteName:userName];
}

@end
