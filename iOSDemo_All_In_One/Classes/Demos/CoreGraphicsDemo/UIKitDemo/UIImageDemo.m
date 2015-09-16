//
//  UIImageDemo.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/6.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "UIImageDemo.h"

@interface UIImageDemo ()

@end

@implementation UIImageDemo

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
    /* init navigation bar */
    self.automaticallyAdjustsScrollViewInsets = YES;
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

/**  Init the UI display of the Controller. <br> */
- (void)initUI {

    /*  Init the simple useful variable of a demo's display */
    int lineY = 10, lineX = 10, simpleSizeWidth = 150, simpleSizeHeight = 150;
    int lineXcenter = (SCREENBOUNDS.size.width - simpleSizeWidth) / 2;
    NSString *codes;
    // Init a scrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 0, SCREENBOUNDS.size.width, SCREENBOUNDS.size.height);
    scrollView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:scrollView];
    
    // 平移
    UIImage *mars = [UIImage imageNamed:@"douwo_icon"];
    CGSize sz = mars.size;
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width * 2, sz.height), NO, 0);
    [mars drawAtPoint:CGPointMake(0, 0)];
    [mars drawAtPoint:CGPointMake(sz.width, 0)];
    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    // add image to view
    UIImageView *iv =
        [[UIImageView alloc] initWithFrame:[CommonUtils centerRectByGivenLineY:lineY]];
    iv.image = im;
    [scrollView addSubview:iv];
    // Tips
    codes = @"对图片进行平移：\n" @"    UIImage *mars = [UIImage imageNamed:xx];\n"
        @"    CGSize sz = mars.size;\n"
        @"    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width * 2, sz.height), NO, 0);\n"
        @"    [mars drawAtPoint:CGPointMake(0, 0)];\n"
        @"    [mars drawAtPoint:CGPointMake(sz.width, 0)];\n"
        @"    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();\n"
        @"    UIGraphicsEndImageContext();";
    [CommonUtils postCode:codes
                withFrame:[CommonUtils codeRectByGivenLineY:[self newLine:&lineY]]
               parentView:scrollView];
               
    // 缩放
    UIImage *img = [UIImage imageNamed:@"douwo_icon"];
    CGSize imgSize = img.size;
    // 根据图片的大小来创建相应大小的画布（这里的画布指的就是 Graphics Context）
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width * 2, sz.height * 2), NO, 0);
    // 画图,画一个放大倍的图标
    [img drawInRect:CGRectMake(0, 0, imgSize.width * 2, imgSize.height * 2)];
    // 再画一个原图
    [img drawInRect:CGRectMake(imgSize.width / 2, imgSize.height / 2, imgSize.width, imgSize.height)
          blendMode:kCGBlendModeMultiply
              alpha:1.0];
    // 输出Image
    im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    // add image to view
    iv = [[UIImageView alloc]
        initWithFrame:[CommonUtils centerRectByGivenLineY:[self newLine:&lineY]]];
    iv.image = im;
    [scrollView addSubview:iv];
    // Tips
    codes = @"对图片进行缩放与修改透明度：\n"
        @"       UIImage *img = [UIImage imageNamed:xx];\n" @"       CGSize imgSize = img.size;\n"
        @"       // 根据图片的大小来创建相应大小的画布（这里的画布指的就是 Graphics Context）\n"
        @"       UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width * 2, sz.height * 2), "
        @"NO, 0);\n" @"       // 画图,画一个放大倍的图标\n"
        @"       [img drawInRect:CGRectMake(0, 0, imgSize.width * 2, imgSize.height * 2)];\n"
        @"       // 再画一个原图\n"
        @"       [img drawInRect:CGRectMake(imgSize.width / 2, imgSize.height / 2, imgSize.width,\n"
        @"                                 imgSize.height) blendMode:kCGBlendModeMultiply "
        @"alpha:1.0];\n" @"       // 输出Image\n"
        @"       im = UIGraphicsGetImageFromCurrentImageContext();\n"
        @"       UIGraphicsEndImageContext();";
    [CommonUtils postCode:codes
                withFrame:[CommonUtils codeRectByGivenLineY:[self newLine:&lineY] rectSize:170]
               parentView:scrollView];
               
    // 裁剪
    UIImage *imgCut = [UIImage imageNamed:@"douwo_icon"];
    CGSize imgCutSize = imgCut.size;
    // 根据根据要裁剪部分大小来创建相应大小的画布(这里只要图片的右半部分)
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width / 2, sz.height), NO, 0);
    // 图片画的地方往左移半个身位，让左半部分隐藏起来
    [imgCut drawAtPoint:CGPointMake(-imgCutSize.width / 2, 0)];
    UIImage *imgCutOut = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    // add image to view
    iv = [[UIImageView alloc]
        initWithFrame:[CommonUtils centerRectByGivenLineY:[self newLine:&lineY offsize:180]]];
    iv.image = imgCutOut;
    [scrollView addSubview:iv];
    // Tips
    codes = @"对图片进行裁剪(只显示图片的右半部分)：\n \
    UIImage *imgCut = [UIImage imageNamed:xx];\n \
    CGSize imgCutSize = imgCut.size;\n \
    // 根据根据要裁剪部分大小来创建相应大小的画布(这里只要图片的右半部分) \n \
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width / 2, sz.height ), NO, 0);\n \
    // 图片画的地方往左移半个身位，让左半部分隐藏起来\n \
    [imgCut drawAtPoint:CGPointMake(-imgCutSize.width/2, imgCutSize.height)];\n \
    UIImage *imgCutOut = UIGraphicsGetImageFromCurrentImageContext();\n \
    UIGraphicsEndImageContext();";
    [CommonUtils postCode:codes
                withFrame:[CommonUtils codeRectByGivenLineY:[self newLine:&lineY]]
               parentView:scrollView];
               
    /*  end of scrollivew  */
    [self newLine:&lineY];
    scrollView.contentSize = CGSizeMake(SCREENBOUNDS.size.width, [self newLine:&lineY]);
}

- (int)newLine:(int *)y {
    *y += 160;
    return *y;
}

- (int)newLine:(int *)y offsize:(int)offsize{
    *y += offsize;
    return *y;
}

@end
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
