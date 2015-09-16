//
//  demoModel.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

/** Define enum of demoType <br>
   DemoTypeDemoGroup: if the demo is a Group <br>
   DemoTypeDemo: If it a demo, it must implele getDemoViewControllerBlock to init a real
   viewController*/
typedef enum { DemoTypeDemoRoot = 0, DemoTypeDemoGroup, DemoTypeDemo } DemoType;

/** Block method define */
typedef UIViewController * (^GetDemoViewControllerBlock)();

@class UIViewController;

#pragma mark - Interface define

@interface DemoModel : NSObject

@property(nonatomic) int mDemoId;
@property(nonatomic, strong) NSString *mDemoName;
@property(nonatomic) DemoType mDemoType;
@property(nonatomic, strong) NSMutableArray *mDemoArray;
@property(nonatomic, weak) DemoModel *mDemoParent;
@property(nonatomic, strong) UIViewController *mDemoViewController;
@property(nonatomic, strong) GetDemoViewControllerBlock mGetDemoViewControllerBlock;

- (instancetype)initWithDemoName:(NSString *)demoName;
- (instancetype)initWithDemoName:(NSString *)demoName
                      demoParent:(DemoModel *)parent;
- (instancetype)initWithDemoName:(NSString *)demoName
                      demoParent:(DemoModel *)parent
                    getDemoBlock:(GetDemoViewControllerBlock)block;
                    
@end
