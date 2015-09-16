//
//  DemoTableViewController.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DemoModel;

@interface DemoTableViewController : UITableViewController

@property (nonatomic , weak) DemoModel *mDemoModel;

-(instancetype)initWithDemo:(DemoModel *)demo;

@end
