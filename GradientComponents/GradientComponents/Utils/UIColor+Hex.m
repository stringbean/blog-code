//
//  UIColor+Hex.m
//  GradientComponents
//
//  Created by Michael Stringer on 23/01/2012.
//  Copyright (c) 2012 Michael Stringer. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (UIColor *) colorWithHexString:(NSString *)aHexString
{
    NSScanner *scanner = [NSScanner scannerWithString:aHexString];
    unsigned hexNum;
    
    if (![scanner scanHexInt:&hexNum])
    {
        return nil;
    }
    
    return [UIColor colorWithRGBHex:hexNum];
}

+ (UIColor *) colorWithRGBHex:(UInt32)aHex
{
    int r = (aHex >> 16) & 0xFF;
    int g = (aHex >> 8) & 0xFF;
    int b = (aHex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}

@end
