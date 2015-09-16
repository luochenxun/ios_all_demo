//
//  UIKitSimpleDemo.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/5.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "UIKitSimpleDemo.h"

/* -----------------  Inner Classes  --------------- */
#pragma mark - Inner Classes

@interface UIKitSimpleView : UIView

@end

@implementation UIKitSimpleView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    LoggerString(@"drawRect method call");
    
    // draw a blueCircle
    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    [[UIColor blueColor] setFill];
    [p fill];
}

//- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
//    UIGraphicsPushContext(ctx);
//    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0 , 0, 100 , 100)];
//    [[UIColor yellowColor] setFill];
//    [p fill];
//    UIGraphicsPopContext();
//}

@end
// -----------------  End of Inner Classes

@interface UIKitSimpleDemo ()

@end

@implementation UIKitSimpleDemo

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

    // get a white background
    self.view.backgroundColor = [UIColor whiteColor];
    
    // add a subView of drawing-a-blue-circle
    UIKitSimpleView *simpleView =
        [[UIKitSimpleView alloc] initWithFrame:CGRectMake(100, 10, 100, 100)];
    simpleView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:simpleView];
    // Tips
    NSString *codes =
        @"第一个蓝圆，自定义View画之：\n " @"- (void)drawRect:(CGRect)rect {\n    "
        @"UIBezierPath *p = [UIBezierPath " @"\tbezierPathWithOvalInRect:rect]; \n    [[UIColor "
        @"blueColor] setFill];\n    [p fill];\n }";
    [CommonUtils postCode:codes
                withFrame:CGRectMake(10, 115, SCREENBOUNDS.size.width - 20, 120)
               parentView:self.view];
               
    // drawing a yellow circle by uiKit method and make a uiimage of it
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100, 100), NO, 0);
    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    [[UIColor yellowColor] setFill];
    [p fill];
    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(100, 240, 100, 100)];
    iv.image = im;
    [self.view addSubview:iv];
    // Tips
    codes = @"第二个圆，将画在graphics context输出Image：\n"
        @"    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100, 100), NO, 0);\n    "
        @"UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, "
        @"100)];\n    [[UIColor yellowColor] setFill];\n    [p fill];\n    UIImage *im = "
        @"UIGraphicsGetImageFromCurrentImageContext();\n    UIGraphicsEndImageContext();";
    [CommonUtils postCode:codes
                withFrame:CGRectMake(10, 350, SCREENBOUNDS.size.width - 20, 120)
               parentView:self.view];
}

- (void)newLine:(int **)y {
    *y += 120;
}

@end
