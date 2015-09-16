//
//  UIImageViewDemo.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/3.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "ContentModeDemo.h"

@interface ContentModeDemo ()

@end

@implementation ContentModeDemo

/* -----------------  Static Variable  --------------- */
#pragma mark - Static variable

static int DemoLineStarY = 11;
static int DemoLineStarX = 100;

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
    DemoLineStarY = 11;
    DemoLineStarX = 120;
}

/**  Init the UI display of the Controller. <br> */
- (void)initUI {
    // Init a scrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 0, SCREENBOUNDS.size.width, SCREENBOUNDS.size.height);
    scrollView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:scrollView];
    
    // empty imageview
    UILabel *tips =
        [[UILabel alloc] initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY, 100, 100)];
    tips.font = [UIFont systemFontOfSize:12];
    tips.numberOfLines = 8;
    tips.text = @"NO Image:\n(A imageView has white background without a UIImage)";
    [scrollView addSubview:tips];
    // image
    UIImageView *imageView = [[UIImageView alloc]
        initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 150, 170)];
    imageView.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:imageView];
    
    // ScaleToFill
    DemoLineStarY += 220;
    tips =
        [[UILabel alloc] initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY, 100, 100)];
    tips.font = [UIFont systemFontOfSize:12];
    tips.numberOfLines = 8;
    tips.text = @"Scale to fill:\n(Default)\n填满整个View。\n（这会改变图片本身的长宽比例）";
    [scrollView addSubview:tips];
    // image
    imageView = [[UIImageView alloc]
        initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 150, 170)];
    imageView.image = [UIImage imageNamed:@"douwo"];
    imageView.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:imageView];
    
    // ScaleAspectFit
    DemoLineStarY += 220;
    tips =
        [[UILabel alloc] initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY, 100, 100)];
    tips.font = [UIFont systemFontOfSize:12];
    tips.numberOfLines = 8;
    tips.text =
        @"Scale Aspect Fit:\n等比缩放以填充View，会让整个image显示，到高度或宽度达View边缘为止."
        @"即图片大小不会超过View";
    [scrollView addSubview:tips];
    // image
    imageView = [[UIImageView alloc]
        initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 150, 170)];
    imageView.image = [UIImage imageNamed:@"douwo"];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:imageView];
    
    // ScaleAspectFill
    DemoLineStarY += 220;
    tips =
        [[UILabel alloc] initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY, 100, 100)];
    tips.font = [UIFont systemFontOfSize:12];
    tips.numberOfLines = 8;
    tips.text =
        @"Scale Aspect Fill :\n等比缩放以填充View，Image有可能被切割，到高度与宽度都过View边缘为止."
        @"即图片大小不会超过View";
    [scrollView addSubview:tips];
    // image
    imageView = [[UIImageView alloc]
        initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 150, 170)];
    imageView.image = [UIImage imageNamed:@"douwo"];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.clipsToBounds = YES;
    [scrollView addSubview:imageView];
    
    // Center
    DemoLineStarY += 220;
    tips =
        [[UILabel alloc] initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY, 100, 100)];
    tips.font = [UIFont systemFontOfSize:12];
    tips.numberOfLines = 8;
    tips.text = @"Center :\n居中显示，图片不会缩放";
    [scrollView addSubview:tips];
    // image
    imageView = [[UIImageView alloc]
        initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 150, 170)];
    imageView.image = [UIImage imageNamed:@"douwo"];
    imageView.contentMode = UIViewContentModeCenter;
    imageView.clipsToBounds = YES;
    imageView.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:imageView];
    
    // scrollview's contentSize
    scrollView.contentSize = CGSizeMake(SCREENBOUNDS.size.width, DemoLineStarY + 400);
}

@end























