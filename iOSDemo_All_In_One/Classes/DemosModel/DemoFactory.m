//
//  DemoFactory.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "DemoFactory.h"
#import "DemoModel.h"
#import "SimpleUIViewDemo.h"
#import "ContentModeDemo.h"
#import "TileImageDemo.h"
#import "NinepatchStretchDemo.h"
#import "UIKitSimpleDemo.h"
#import "CGSimpleDemo.h"
#import "UIImageDemo.h"
#import "UcenterDemo.h"
#import "PreferencesDemo.h"

#define ADD_DEMO_CATEGORY(name, parent) [[DemoModel alloc] initWithDemoName:name demoParent:parent]
#define ADD_DEMO(name, demoVC, category)                                                           \
    [[DemoModel alloc] initWithDemoName:name                                                       \
                             demoParent:category                                                   \
                           getDemoBlock:^UIViewController *{                                       \
        return [[demoVC alloc] init];                                                              \
                           }];
                           
@implementation DemoFactory

FUNC_IMPLEMENT_SINGLETON(DemoFactory)

- (instancetype)init {
    if (self = [super init]) {
        [self initAllDemos];
    }
    return self;
}

- (void)initAllDemos {
    self.mDemoArray = [[NSMutableArray alloc] initWithCapacity:100];
    self.mDemoType = DemoTypeDemoRoot;
    
    [self addViewsDemo];
    [self addGraphicsDemo];
    [self addStorageDemo];
    [self addUtilsDemo];
    [self addUILibsDemo];
}

#pragma mark - 添加基本控件Demo
- (void)addViewsDemo {
    /* --------  Level1 uiDemos  ------- */
    DemoModel *viewsDemo = ADD_DEMO_CATEGORY(@"基本控件", self);
    
    // 控件 UIView
    DemoModel *UIViewDemo = ADD_DEMO_CATEGORY(@"UIView", viewsDemo);
    ADD_DEMO(@"布局与定位", SimpleUIViewDemo, UIViewDemo)
    
    // 控件 UIImageView
    DemoModel *uiImageViewDemo = ADD_DEMO_CATEGORY(@"UIImageView", viewsDemo);
    ADD_DEMO(@"ContentMode, 图片填充模式", ContentModeDemo, uiImageViewDemo)
    ADD_DEMO(@"平铺显示图片", TileImageDemo, uiImageViewDemo)
    ADD_DEMO(@"仿点9拉伸图片", NinepatchStretchDemo, uiImageViewDemo)
}

#pragma mark - 添加基本绘图Demo
- (void)addGraphicsDemo {
    /* --------  Level1 CoreGraphics Demo  ------- */
    DemoModel *coreGraphicsDemo = ADD_DEMO_CATEGORY(@"2D画图(Quartz)", self);
    // -------- Level2 UIkit demos -------
    DemoModel *uikitDemo =
        [[DemoModel alloc] initWithDemoName:@"UIKit Demos" demoParent:coreGraphicsDemo];
    // Demo SimpleUIKit Demo
    DemoModel *simpleUIKitDemo = [[DemoModel alloc] initWithDemoName:@"Simple"
                                                          demoParent:uikitDemo
                                                        getDemoBlock:^UIViewController *{
                                                          return [[UIKitSimpleDemo alloc] init];
                                                        }];
    DemoModel *imageDemo = [[DemoModel alloc] initWithDemoName:@"绘制 UIImage"
                                                    demoParent:uikitDemo
                                                  getDemoBlock:^UIViewController *{
                                                    return [[UIImageDemo alloc] init];
                                                  }];
    // -------- Level2 CG demos -------
    DemoModel *CGDemo =
        [[DemoModel alloc] initWithDemoName:@"CG(CoreGraphics) Demos" demoParent:coreGraphicsDemo];
    // Demo CGSimple Demos
    DemoModel *cgSimpleDemo = [[DemoModel alloc] initWithDemoName:@"Simple"
                                                       demoParent:CGDemo
                                                     getDemoBlock:^UIViewController *{
                                                       return [[CGSimpleDemo alloc] init];
                                                     }];
}

#pragma mark - 添加持久化Demo
- (void)addStorageDemo {
    /* --------  Level1 Category  ------- */
    DemoModel *storageDemo = ADD_DEMO_CATEGORY(@"持久化存储", self);
    ADD_DEMO(@"NSUserDefaults", PreferencesDemo, storageDemo)
}


#pragma mark - 添加工具类Demo
- (void)addUtilsDemo {
    /* --------  Level1 工具类 Demo  ------- */
    DemoModel *viewsDemo = ADD_DEMO_CATEGORY(@"工具类", self);
}

#pragma mark - 添加UI库Demo
- (void)addUILibsDemo {
    /* --------  Level1 UI库Demo  ------- */
    DemoModel *uiLibsDemos = ADD_DEMO_CATEGORY(@"UI库", self);
    
    // 列表类(含TabBar)
    DemoModel *listDemos = ADD_DEMO_CATEGORY(@"列表类(含TabBar)", uiLibsDemos);
    ADD_DEMO(@"个人中心", UcenterDemo, listDemos)
}

@end
