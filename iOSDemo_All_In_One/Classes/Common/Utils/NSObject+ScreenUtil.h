//
//  NSObject+ScreenUtil.h
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/29.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (common)

/**
 *  @author luochenxun(luochenxun@gmail.com), 15-05-29 12:05:05
 *
 *  User a Screen-fit method to make a CGRect base on the screen's size <br>
 *
 *  @param x      <#x description#>
 *  @param y      <#y description#>
 *  @param width  <#width description#>
 *  @param height <#height description#>
 *
 *  @return return the CGRect resize base on the screen's size.
 */
CGRect ScreenFitCGRect(CGFloat x, CGFloat y, CGFloat width, CGFloat height);

/**
 *  @author luochenxun(luochenxun@gmail.com), 15-05-29 12:05:05
 *
 *  User a method to make a CGRect base on the screen's size. <br>
 *  But we only resize the given rect base the width of the screen, and use
 *equal ratio <br>
 *
 *  @param x      <#x description#>
 *  @param y      <#y description#>
 *  @param width  <#width description#>
 *  @param height <#height description#>
 *
 *  @return return the CGRect resize base on the screen's size
 */
CGRect ScreenEqualRatioCenterCGRect(CGFloat x, CGFloat y, CGFloat width,
                                    CGFloat height);

/**
 *  @author luochenxun(luochenxun@gmail.com), 15-05-29 12:05:05
 *
 *  User a Screen-fit method to make a CGRect base on the screen's size <br>
 *  But the (x,y) of the rect will not move <br>
 *
 *  @param x      <#x description#>
 *  @param y      <#y description#>
 *  @param width  <#width description#>
 *  @param height <#height description#>
 *
 *  @return return the CGRect resize base on the screen's size
 */
CGRect ScreenEqualRatioLeftTopCGRect(CGFloat x, CGFloat y, CGFloat width,
                                     CGFloat height);

CGFloat getHeight(UIView *view);

CGFloat getWidth(UIView *view);

CGFloat getY(UIView *view);

CGFloat getX(UIView *view);

/**
 *  @author luochenxun(luochenxun@gmail.com), 15-09-15 22:09:42
 *
 *  Get the x that can
 */
CGFloat getCenterX(UIView *view);
CGFloat getCenterXByWidth(CGFloat viewWidth);

@end
