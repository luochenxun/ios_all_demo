//
//  DemoFactory.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoModel.h"

@interface DemoFactory : DemoModel


/**  singleton model */
FUNC_INTERCAFE_SINGLETON(DemoFactory)


-(void)initAllDemos;

@end
