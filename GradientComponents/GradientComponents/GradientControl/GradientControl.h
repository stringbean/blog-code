//
//  GradientControl.h
//  GradientComponents
//
//  Created by Michael Stringer on 23/01/2012.
//  Copyright (c) 2012 Michael Stringer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface GradientControl : UIControl
{
    @private
    // background layers
    CAGradientLayer *normalBackground;
    CAGradientLayer *highlightBackground;
}

- (void) setCornerRadius:(float)aCornerRadius;
- (void) setBorderColor:(UIColor *)aBorderColor;
- (void) setBorderWidth:(float)aBorderWidth;
- (void) setNormalColors:(NSArray *)aColors withLocations:(NSArray *)aLocations;
- (void) setHighlightColors:(NSArray *)aColors withLocations:(NSArray *)aLocations;

@end
