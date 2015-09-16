//
//  SimpleUIViewDemo.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/28.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//
#import "SimpleUIViewDemo.h"

@interface SimpleUIViewDemo ()

@end

@implementation SimpleUIViewDemo

/* -----------------  Static Member  --------------- */
#pragma mark - Static Member

static int DemoLineStarY = 11;
static int DemoLineStarX = 200;

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
	DemoLineStarY = 11;
}

/**  Init the UI display of the Controller. <br> */
- (void)initUI {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
	/* demo1 CGRect & CGRectInset */
	UILabel *demo1Title = [[UILabel alloc]initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY, 165, 50)];
	demo1Title.font = [UIFont systemFontOfSize:11];
	demo1Title.numberOfLines = 5;
	demo1Title.text = @"CGRect & CGRectInset: \n(CGRectInset方法用父View的bounds根据inset值生成一个小view)";
	[self.view addSubview:demo1Title];
	// v1
	UIView *demo1V1 = [[UIView alloc] initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 50, 50)];
	demo1V1.backgroundColor = [UIColor redColor];
	// v2
	UIView *demo1V2 = [[UIView alloc] initWithFrame:CGRectInset(demo1V1.bounds, 5, 5)];
	demo1V2.backgroundColor = [UIColor blueColor];
	// add view
	[self.view addSubview:demo1V1];
	[demo1V1 addSubview:demo1V2];
	
	[self nextLine];
	/* demo2 Transform
	 * 从效果可见，子View也跟着旋转了，说明子View也会跟着父View的变换矩阵而变换 */
	UILabel *demo2Title = [[UILabel alloc]initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY, 165, 50)];
	demo2Title.font = [UIFont systemFontOfSize:11];
	demo2Title.numberOfLines = 5;
	demo2Title.text = @"Transform : \n(从效果可见，子View也跟着旋转了)";
	demo2Title.lineBreakMode = NSLineBreakByWordWrapping;
	[self.view addSubview:demo2Title];
	// v1
	UIView *demo2v1 = [[UIView alloc] initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 50, 50)];
	demo2v1.backgroundColor = [UIColor redColor];
	// v2
	UIView *demo2v2 = [[UIView alloc] initWithFrame:CGRectInset(demo2v1.bounds, 5, 5)];
	demo2v2.backgroundColor = [UIColor blueColor];
	// add view
	[self.view addSubview:demo2v1];
	[demo2v1 addSubview:demo2v2];
	// transform
	demo2v1.transform = CGAffineTransformRotate(demo2v1.transform, M_PI / 4);
	
	[self nextLine];
	/* demo3 子View进行Transform
	 * 从效果可见，子View变换了，也超出了父View的范围，但还是显示出来了
	 * 还要注意的另一个就是，旋转后，x,y 坐标已变，位移时得注意当前x轴方向 ！！*/
	UILabel *demo3Title = [[UILabel alloc]initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY, 165, 50)];
	demo3Title.font = [UIFont systemFontOfSize:11];
	demo3Title.numberOfLines = 5;
	demo3Title.lineBreakMode = NSLineBreakByWordWrapping;
	demo3Title.text = @"Subview Transform :\n(旋转后，x,y 坐标系已变，注意从后面的子view位移是按什么样的坐标系的)";
	[self.view addSubview:demo3Title];
	// v1
	UIView *demo3v1 = [[UIView alloc] initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 50, 50)];
	demo3v1.backgroundColor = [UIColor redColor];
	// v2
	UIView *demo3v2 = [[UIView alloc] initWithFrame:CGRectInset(demo3v1.bounds, 5, 5)];
	demo3v2.backgroundColor = [UIColor blueColor];
	// v3
	UIView *demo3v3 = [[UIView alloc] initWithFrame:CGRectInset(demo3v1.bounds, 5, 5)];
	demo3v3.alpha = 0.7;
	demo3v3.backgroundColor = [UIColor yellowColor];
	// v4
	UIView *demo3v4 = [[UIView alloc] initWithFrame:CGRectInset(demo3v1.bounds, 5, 5)];
	demo3v4.alpha = 0.5;
	demo3v4.backgroundColor = [UIColor greenColor];
	// add view
	[self.view addSubview:demo3v1];
	[demo3v1 addSubview:demo3v2];
	[demo3v1 addSubview:demo3v3];
	[demo3v1 addSubview:demo3v4];
	// transform
	demo3v2.transform = CGAffineTransformRotate(demo3v2.transform, M_PI / 4);
	demo3v3.transform = CGAffineTransformRotate(demo3v3.transform, M_PI / 4);
	demo3v3.transform = CGAffineTransformTranslate(demo3v3.transform, 11, 5);
	// 注释这段和上面的区别就在于，上面这个会保留之前的旋转变换，而下面注释的语句不会保留旋转变换。
	// demo3v3.transform = CGAffineTransformMakeTranslation(11, 0);
	demo3v4.transform = CGAffineTransformRotate(demo3v4.transform, M_PI / 4);
	demo3v4.transform = CGAffineTransformTranslate(demo3v4.transform, 20, 11);
	
	[self nextLine]; DemoLineStarY += 11;
	/* demo4 Transform
	 * 用Concat连接两种变换 */
	UILabel *demo4Title = [[UILabel alloc]initWithFrame:ScreenEqualRatioCenterCGRect(20, DemoLineStarY, 165, 70)];
	demo4Title.font = [UIFont systemFontOfSize:11];
	demo4Title.numberOfLines = 6;
	demo4Title.text = @"CGAffineTransformConcat : \n(用Concat连接两种变换。为了使位移时坐标轴不变，这回先位移，再旋转.这里设置了父View的 ClipsToBounds为YES )";
	[self.view addSubview:demo4Title];
	// v1
	UIView *demo4v1 = [[UIView alloc] initWithFrame:ScreenEqualRatioCenterCGRect(DemoLineStarX, DemoLineStarY, 50, 50)];
    demo4v1.clipsToBounds = YES;
	demo4v1.backgroundColor = [UIColor redColor];
	// v2
	UIView *demo4v2 = [[UIView alloc] initWithFrame:CGRectInset(demo2v1.bounds, 5, 5)];
	demo4v2.backgroundColor = [UIColor blueColor];
	// add view
	[self.view addSubview:demo4v1];
	[demo4v1 addSubview:demo4v2];
	// transform
	CGAffineTransform r = CGAffineTransformMakeRotation(M_PI / 4);
	CGAffineTransform t = CGAffineTransformMakeTranslation(5, 0);
	demo4v2.transform = CGAffineTransformConcat(r, t); // 这意这个连接的顺序很重要
    
}

- (void)initNavigationBar {
	// adjust view with statusBar
	self.automaticallyAdjustsScrollViewInsets = YES;
	self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (int)nextLine {
	DemoLineStarY += 70;
	return DemoLineStarY;
}

@end
