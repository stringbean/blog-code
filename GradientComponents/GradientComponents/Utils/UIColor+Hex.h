//
//  UIColor+Hex.h
//  GradientComponents
//
//  Created by Michael Stringer on 23/01/2012.
//  Copyright (c) 2012 Michael Stringer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *) colorWithHexString:(NSString *)aHexString;

+ (UIColor *) colorWithRGBHex:(UInt32)aHex;

@end
