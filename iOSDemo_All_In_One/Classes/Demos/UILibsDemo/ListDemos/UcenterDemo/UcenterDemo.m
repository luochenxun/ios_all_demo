//
//  UcenterDemo.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/18.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "UcenterDemo.h"
#import "MBTwitterScroll.h"
#import "UIScrollView+TwitterCover.h"


/* -----------------  Inner Classes  --------------- */
#pragma mark - Inner Classes

// Tips : Define InnerClasses here

// ------ End of Inner Classes

@interface UcenterDemo ()

@end

@implementation UcenterDemo

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

- (void)viewWillAppear:(BOOL)animated {
    // hide navigation bar
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    // show navigation bar
    [self.navigationController setNavigationBarHidden:NO animated:YES];
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
    MBTwitterScroll *myScrollView =
        [[MBTwitterScroll alloc] initScrollViewWithBackgound:nil
                                                 avatarImage:[[UIImage imageNamed:@"douwo_icon"] boxblurImageWithBlur:0.3]
                                                 titleString:nil
                                              subtitleString:nil
                                                 buttonTitle:nil
                                               contentHeight:2000];
    myScrollView.delegate = self;
    [self.view addSubview:myScrollView];
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

- (void)recievedMBTwitterScrollEvent {
    LoggerString(@"recievedMBTwitterScrollEvent call");
}

- (void)recievedMBTwitterScrollButtonClicked {
    LoggerString(@"recievedMBTwitterScrollButtonClicked call");
}

@end
