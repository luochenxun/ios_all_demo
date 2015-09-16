//
//  SimpleLinearViewController.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/9/15.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "XXBaseViewController.h"

@interface SimpleLinearViewController : XXBaseViewController

@property(nonatomic, strong) UIScrollView *mScrollView;

- (void)addView:(UIView *)view withSize:(CGSize)size;

@end
