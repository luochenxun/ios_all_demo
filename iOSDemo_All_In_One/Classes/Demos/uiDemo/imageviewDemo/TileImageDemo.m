//
//  TileImageDemo.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/3.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "TileImageDemo.h"

@interface TileImageDemo ()

@end

@implementation TileImageDemo

/* -----------------  Static Variable  --------------- */
#pragma mark - Static variable

// Tips: Init static-variable here

/* -----------------  Impletement Methods  --------------- */
#pragma mark - Impletement Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initEnvironment];
    [self initUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidAppear:(BOOL)animated {
}

- (void)viewDidDisappear:(BOOL)animated {
}

/* -----------------  Init Methods  --------------- */
#pragma mark - Init Methods

/**  Init the Environment of the Controller. <br> */
- (void)initEnvironment {
    // Tips: Init environment here
}

/**  Init the UI display of the Controller. <br> */
- (void)initUI {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:SCREENBOUNDS];
    [scrollView setContentSize:CGSizeMake(0, 2000)];
    
    //声明一个背景图片
    UIImage *backgroundImage = [UIImage imageNamed:@"douwo_icon"];
    
    //将刚刚生成的图片转换为UIColor对象。这样便可以实现平铺了。
    UIColor *backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    
    //设置scrollView背景
    [scrollView setBackgroundColor:backgroundColor];
    
    [self.view insertSubview:scrollView atIndex:0];
}

@end
