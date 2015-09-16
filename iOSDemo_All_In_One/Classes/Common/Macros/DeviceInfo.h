//
//  DeviceInfo.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/23.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#ifndef iOSDemo_All_In_One_DeviceInfo_h
#define iOSDemo_All_In_One_DeviceInfo_h

/* --------------  Debug Macros ----------- */

#ifdef IS_DEBUG // star of define logger

#define Logger(format, ...)                                                    \
  do {                                                                         \
    fprintf(stderr, "<%s : %d> %s\n",                                          \
            [[[NSString                                                        \
                stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], \
            __LINE__, __func__);                                               \
    (NSLog)((format), ##__VA_ARGS__);                                          \
    fprintf(stderr, "-------\n");                                              \
  } while (0)

#define LoggerString(stringcontent)                                            \
  do {                                                                         \
    fprintf(stderr, "<%s : %d> %s\n",                                          \
            [[[NSString                                                        \
                stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], \
            __LINE__, __func__);                                               \
    (NSLog)(@"%@", stringcontent);                                             \
    fprintf(stderr, "-------\n");                                              \
  } while (0)

#define LoggerWithTitle(title, stringcontent)                                  \
  do {                                                                         \
    fprintf(stderr, "<%s : %d> %s\n",                                          \
            [[[NSString                                                        \
                stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], \
            __LINE__, __func__);                                               \
    (NSLog)(@"%@: %@", title, stringcontent);                                  \
    fprintf(stderr, "-------\n");                                              \
  } while (0)

#else

#define Logger(format, ...) ""
#define LoggerString(format, ...) ""
#define LoggerWithTitle(format, ...) ""

#endif // end of define logger

/* --------------  Device Info ----------- */
#define IS_IOS7                                                                \
  ([[[UIDevice currentDevice] systemVersion] floatValue] > 6.9 ? YES : NO)
#define IS_IPHONE5                                                             \
  (([[UIScreen mainScreen] bounds].size.height) < 568 ? NO : YES)
#define IS_IPHONE6PLUS ([UIScreen mainScreen].scale > 2.9 ? YES : NO)

#define GET_DEVICE_WIDTH                                                       \
  (([[UIScreen mainScreen] bounds].size.width) > 0                             \
       ? ([[UIScreen mainScreen] bounds].size.width)                           \
       : 320)
#define GET_DEVICE_HEIGHT                                                      \
  (IS_IOS7                                                                     \
       ? (([[UIScreen mainScreen] bounds].size.height) > 0                     \
              ? ([[UIScreen mainScreen] bounds].size.height)                   \
              : 568)                                                           \
       : (([[UIScreen mainScreen] bounds].size.height) -                       \
          ([[UIApplication sharedApplication] isStatusBarHidden] ? 0 : 20)))

#define GET_STATE_BAR_HEIGHT (IS_IPHONE6PLUS ? 30 : (IS_IOS7 ? 20 : 0))

#define GET_NAV_BAR_HEIGHT (IS_IPHONE6PLUS ? 66 : 44)

#define GET_TAB_BAR_HEIGHT (48)

#define SCREENBOUNDS [[UIScreen mainScreen] bounds]

#endif
