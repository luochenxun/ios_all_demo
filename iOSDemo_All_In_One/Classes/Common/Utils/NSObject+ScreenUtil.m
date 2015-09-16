//
//  NSObject+ScreenUtil.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/5/29.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "NSObject+ScreenUtil.h"

@implementation NSObject (common)

CGRect ScreenFitCGRect(CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
  CGRect rect;
  rect.origin.x = x / 320 * GET_DEVICE_WIDTH;
  rect.origin.y = y / 568 * GET_DEVICE_HEIGHT;
  rect.size.width = width / 320 * GET_DEVICE_WIDTH;
  rect.size.height = height / 568 * GET_DEVICE_HEIGHT;
  return rect;
}

CGRect ScreenEqualRatioCenterCGRect(CGFloat x, CGFloat y, CGFloat width,
                                    CGFloat height) {
  CGRect rect;
  rect.origin.x = x / 320 * GET_DEVICE_WIDTH;
  rect.origin.y = y / 320 * GET_DEVICE_WIDTH;
  rect.size.width = width / 320 * GET_DEVICE_WIDTH;
  rect.size.height = height / 320 * GET_DEVICE_WIDTH;
  return rect;
}

CGRect ScreenEqualRatioLeftTopCGRect(CGFloat x, CGFloat y, CGFloat width,
                                     CGFloat height) {
  CGRect rect;
  rect.origin.x = x;
  rect.origin.y = y;
  rect.size.width = width / 320 * GET_DEVICE_WIDTH;
  rect.size.height = height / 320 * GET_DEVICE_WIDTH;
  return rect;
}

CGFloat getY(UIView *view) { return view.frame.origin.y; }

CGFloat getX(UIView *view) { return view.frame.origin.x; }

CGFloat getHeight(UIView *view) { return view.frame.size.height; }

CGFloat getWidth(UIView *view) { return view.frame.size.width; }

CGFloat getCenterX(UIView *view) {
  return (GET_DEVICE_WIDTH - view.frame.size.width) / 2;
}

CGFloat getCenterXByWidth(CGFloat viewWidth) {
  return (GET_DEVICE_WIDTH - viewWidth) / 2;
}

@end
