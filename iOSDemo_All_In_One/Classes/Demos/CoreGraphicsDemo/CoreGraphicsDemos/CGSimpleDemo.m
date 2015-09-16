//
//  CoreGraphicsDemo.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/5.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "CGSimpleDemo.h"

/* -----------------  Inner Classes  --------------- */
#pragma mark - Inner Classes

@interface CGSimpleView : UIView

@end

@implementation CGSimpleView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // draw a blueCircle
    CGContextRef con = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(con, CGRectMake(0, 0, 100, 100));
    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
    CGContextFillPath(con);
}

//- (void)drawLayer:(CALayer *)lay inContext:(CGContextRef)con {
//    CGContextAddEllipseInRect(con, CGRectMake(0, 0, 100, 100));
//    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
//    CGContextFillPath(con);
//}

@end

// -----------------  End of Inner Classes

@interface CGSimpleDemo ()

@end

@implementation CGSimpleDemo

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
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:[[CGSimpleView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)]];
}

@end
