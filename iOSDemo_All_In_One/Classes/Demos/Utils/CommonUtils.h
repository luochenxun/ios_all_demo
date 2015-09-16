//
//  CommonUtils.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/6.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonUtils : NSObject

/**
 *  @author luochenxun(luochenxun@gmail.com), 15-06-06 18:06:00
 *
 *  Post code in the given area define by frame
 *
 *  @param codes      the code to post
 *  @param frame      the frame of post-area
 *  @param parentView <#parentView description#>
 */
+ (void)postCode:(NSString *)codes withFrame:(CGRect)frame parentView:(UIView *)parentView;

/**
 *  @author luochenxun(luochenxun@gmail.com), 15-06-06 18:06:07
 *
 *  Retuen the center Rect by given Y
 *
 *  @return the center Rect by given Y
 */
+ (CGRect)centerRectByGivenLineY:(int)lineY;
+ (CGRect)centerRectByGivenLineY:(int)lineY rectSize:(int)rectSize;

/**
 *  @author luochenxun(luochenxun@gmail.com), 15-06-06 18:06:07
 *
 *  Retuen the tips Rect by given Y
 *
 *  @return the tips Rect by given Y
 */
+(CGRect)codeRectByGivenLineY:(int)lineY;
+(CGRect)codeRectByGivenLineY:(int)lineY rectSize:(int)rectSize;
@end
