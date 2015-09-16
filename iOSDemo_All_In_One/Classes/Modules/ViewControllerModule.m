//
//  ViewControllerModule.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/28.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "ViewControllerModule.h"

/* -----------------  Inner Classes  --------------- */
#pragma mark - Inner Classes

// Tips : Define InnerClasses here

// ------ End of Inner Classes

@interface ViewControllerModule ()

@end

@implementation ViewControllerModule

/* -----------------  Static Variable  --------------- */
#pragma mark - Static variable

// Tips: Init static-variable here

/* -----------------  Impletement Methods  --------------- */
#pragma mark - Impletement Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initEnvironment];
    [self initWindow];
    [self initUI];
    [self initData];
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

/**
 *  Init Window(include navigationBar,statusBar,fullscreen and so on)
 */
- (void)initWindow {
    /*Init navigation bar */
    self.automaticallyAdjustsScrollViewInsets = YES;
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

/**  Init the Default UI display of the Controller. <br> */
- (void)initUI {
    // Tips: Init UI here
}

/**  Init the Default UI display of the Controller. <br> */
- (void)initData {
    // Tips: Init the sourceData here
}

/**  Init the Default UI display of the Controller. <br> */
- (void)updateUI {
    // Tips: Usually updateUI after initData
}

/* -----------------  Delegates  --------------- */
#pragma mark - Delegates

@end
