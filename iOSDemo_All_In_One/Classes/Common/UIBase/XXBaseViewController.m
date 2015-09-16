//
//  XXBaseViewController.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/9/15.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "XXBaseViewController.h"

@interface XXBaseViewController ()

@end

@implementation XXBaseViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  self.view.backgroundColor = [UIColor whiteColor];

  [self beforeInitHook];
  [self initEnvironment];
  [self initWindow];
  [self initUI];
  [self afterInitHook];
}

- (void)viewWillAppear:(BOOL)animated {
  [self initNavigationBar];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)beforeInitHook {
}

- (void)afterInitHook {
}

// abstract method
- (void)initEnvironment {
  NSAssert(NO, @"Error occur , must implement the abstract method");
}

// abstract method
- (void)initWindow {
  NSAssert(NO, @"Error occur , must implement the abstract method");
}

// abstract method
- (void)initUI {
  NSAssert(NO, @"Error occur , must implement the abstract method");
}

- (void)initNavigationBar {
  // adjust view with statusBar
  self.automaticallyAdjustsScrollViewInsets = YES;
  self.edgesForExtendedLayout = UIRectEdgeNone;
}

@end
