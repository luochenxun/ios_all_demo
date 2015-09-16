//
//  demoModel.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "DemoModel.h"

@implementation DemoModel

static int modelId = 0;

- (instancetype)initWithDemoName:(NSString *)demoName {
    if (self = [super init]) {
        self.mDemoId = modelId++;
        self.mDemoName = demoName;
        self.mDemoType = DemoTypeDemoGroup;
    }
    
    return self;
}

- (instancetype)initWithDemoName:(NSString *)demoName demoParent:(DemoModel *)parent {
    if (self = [self initWithDemoName:demoName]) {
        // add self in the parent's array
        [parent.mDemoArray addObject:self];
        // add parent in self's array
        [self.mDemoArray insertObject:parent atIndex:0];
    }
    
    return self;
}

- (instancetype)initWithDemoName:(NSString *)demoName
                      demoParent:(DemoModel *)parent
                    getDemoBlock:(GetDemoViewControllerBlock)block {
    if (self = [self initWithDemoName:demoName]) {
        [self setMDemoParent:parent];
        _mGetDemoViewControllerBlock = block;
    }
    
    return self;
}

- (UIViewController *)mDemoViewController {
    return _mGetDemoViewControllerBlock();
}

- (NSMutableArray *)mDemoArray {
    if (_mDemoArray == nil) {
        _mDemoArray = [[NSMutableArray alloc] initWithCapacity:10];
    }
    return _mDemoArray;
}

- (void)setMDemoParent:(DemoModel *)mDemoParent {
    // add self in the parent's array
    [mDemoParent.mDemoArray addObject:self];
    
    // add parent in self's array
    [self.mDemoArray insertObject:mDemoParent atIndex:0];
    
    // change model's type
    self.mDemoType = DemoTypeDemo;
}

@end
