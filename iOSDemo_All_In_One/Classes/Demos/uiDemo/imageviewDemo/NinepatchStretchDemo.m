//
//  NinepatchStretchDemo.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/3.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "NinepatchStretchDemo.h"

@interface NinepatchStretchDemo ()

@end

@implementation NinepatchStretchDemo

/* -----------------  Static Variable  --------------- */
#pragma mark - Static variable

static int DemoLineStarY = 11;
static int DemoLineStarX = 100;

/* -----------------  Impletement Methods  --------------- */
#pragma mark - Impletement Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initEnvironment];
    [self initUI];
    [self initNavigationBar];
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
    DemoLineStarY = 20;
    DemoLineStarX = 150;
}

/**  Init the UI display of the Controller. <br> */
- (void)initUI {
    self.view.backgroundColor = [UIColor whiteColor];
    
    // normal stretch
    UILabel *tips = [[UILabel alloc]
        initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY - 30, 90, 100)];
    tips.font = [UIFont systemFontOfSize:12];
    tips.numberOfLines = 8;
    tips.text = @"一般的拉伸是这样的 : ";
    [self.view addSubview:tips];
    // image
    UIImageView *imageView = [[UIImageView alloc]
        initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 150, 50)];
    imageView.image = [UIImage imageNamed:@"douwo_icon"];
    [self.view addSubview:imageView];
    
    DemoLineStarY += 70;
    // 9-patch stretch
    // 其中capInsets这个参数的格式是(top,left,bottom,right)，从上、左、下、右分别在图片上画了一道线，这样就给一个图片加了一个框。只有在框里面的部分才会被拉伸，而框外面的部分则不会改变。
    tips = [[UILabel alloc]
        initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY - 30, 90, 100)];
    tips.font = [UIFont systemFontOfSize:12];
    tips.numberOfLines = 8;
    tips.text = @"仿点9拉伸 : ";
    [self.view addSubview:tips];
    // image
    imageView = [[UIImageView alloc]
        initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 150, 50)];
    UIImage *image = [UIImage imageNamed:@"douwo_icon"];
    CGFloat top = 0;                      // 顶端盖高度
    CGFloat bottom = 0;                   // 底端盖高度
    CGFloat left = 0;                     // 左端盖宽度
    CGFloat right = image.size.width - 2; // 右端盖宽度
    // 指定为拉伸模式，伸缩后重新赋值
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(top, left, bottom, right)
                                  resizingMode:UIImageResizingModeStretch];
    imageView.image = image;
    [self.view addSubview:imageView];
}

- (void)initNavigationBar {
    // adjust view with statusBar
    self.automaticallyAdjustsScrollViewInsets = YES;
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

@end
