//
//  ProgramDesignHeader.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#ifndef iOSDemo_All_In_One_ProgramDesignHeader_h
#define iOSDemo_All_In_One_ProgramDesignHeader_h

// -----------------------  SingleTon ---------------------------------
#define FUNC_INTERCAFE_SINGLETON(className) + (className *)sharedInstance;
#define FUNC_IMPLEMENT_SINGLETON(className) static className *mInstance = nil;         \
                                            + (className *)sharedInstance {                 \
                                                static dispatch_once_t once;                \
                                                dispatch_once(&once,^{                      \
                                                    mInstance = [[self alloc] init];  \
                                                });                                         \
                                                return mInstance;                     \
                                            }


#endif
