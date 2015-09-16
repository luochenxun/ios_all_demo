//
//  SimpleLinearViewController.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/9/15.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "SimpleLinearViewController.h"

@interface SimpleLinearViewController ()

@end

@implementation SimpleLinearViewController

static int lineY = 0;

- (void)beforeInitHook {
}

- (void)afterInitHook {
  [self.mScrollView setContentSize:CGSizeMake(GET_DEVICE_WIDTH, lineY)];
}

- (void)addView:(UIView *)view withSize:(CGSize)size {
  lineY += 10;
  view.frame =
      CGRectMake(getCenterXByWidth(size.width), lineY, size.width, size.height);
  [self.mScrollView addSubview:view];
  lineY += size.height;
}

- (UIScrollView *)mScrollView {
  if (_mScrollView == nil) {
    _mScrollView = [[UIScrollView alloc] init];
    _mScrollView.frame =
        CGRectMake(0, 0, SCREENBOUNDS.size.width, SCREENBOUNDS.size.height);
    _mScrollView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_mScrollView];
  }
  return _mScrollView;
}

@end
