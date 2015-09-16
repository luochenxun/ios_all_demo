//
//  PreferencesDemo.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/9/15.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "PreferencesDemo.h"

@interface PreferencesDemo ()

@end

@implementation PreferencesDemo

- (void)initEnvironment {
}

- (void)initWindow {
}

- (void)initUI {
  UILabel *tips = [UILabel new];
  tips.text = @"Test";

  UIButton *btn = [UIButton new];
  [btn setTitle:@"Hello" forState:UIControlStateNormal];

  [self addView:tips withSize:CGSizeMake(200, 50)];
  [self addView:btn withSize:CGSizeMake(50, 20)];
}

@end
