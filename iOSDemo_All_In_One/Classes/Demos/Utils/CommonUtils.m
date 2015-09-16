//
//  CommonUtils.m
//  iOSDemo_All_In_One
//
//  Created by luochenxun on 15/6/6.
//  Copyright (c) 2015年 kacha-mobile. All rights reserved.
//

#import "CommonUtils.h"

@implementation CommonUtils

+ (void)postCode:(NSString *)codes withFrame:(CGRect)frame parentView:(UIView *)parentView {
    // outer scroll view
    UIScrollView *tipsScrollview = [[UIScrollView alloc] initWithFrame:frame];
    tipsScrollview.contentSize = CGSizeMake(1000, 1000);
    
    // textView to content codes
    UITextView *tips = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 2000, 2000)];
    tips.font = [UIFont systemFontOfSize:13];
    tips.backgroundColor = [UIColor greenColor];
    tips.scrollEnabled = NO;
    tips.editable = NO;
    tips.userInteractionEnabled = NO;
    tips.contentMode = UIViewContentModeTop;
    tips.text = codes;
    
    // add views
    [tipsScrollview addSubview:tips];
    [parentView addSubview:tipsScrollview];
}

+ (CGRect)centerRectByGivenLineY:(int)lineY {
    return [self centerRectByGivenLineY:lineY rectSize:150];
}

+ (CGRect)centerRectByGivenLineY:(int)lineY rectSize:(int)rectSize {
    return CGRectMake((SCREENBOUNDS.size.width - rectSize) / 2, lineY, rectSize, rectSize);
}

+ (CGRect)codeRectByGivenLineY:(int)lineY {
    return [self codeRectByGivenLineY:lineY rectSize:150];
}
+ (CGRect)codeRectByGivenLineY:(int)lineY rectSize:(int)rectSize {
    return CGRectMake(1, lineY, SCREENBOUNDS.size.width - 2, rectSize);
}

@end
