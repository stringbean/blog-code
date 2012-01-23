//
//  MainViewController.m
//  GradientComponents
//
//  Created by Michael Stringer on 23/01/2012.
//  Copyright (c) 2012 Michael Stringer. All rights reserved.
//

#import "MainViewController.h"
#import <QuartzCore/QuartzCore.h>

#import "UIColor+Hex.h"

@implementation MainViewController

#pragma mark - View lifecycle

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    // set a simple gradient background for ourselves
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = [NSArray arrayWithObjects:
                            (id)[[UIColor colorWithHexString:@"97999A"] CGColor],
                            (id)[[UIColor colorWithHexString:@"CFD1D1"] CGColor],
                            (id)[[UIColor colorWithHexString:@"D8DADB"] CGColor],
                            nil];
    
    gradientLayer.locations = [NSArray arrayWithObjects:
                               [NSNumber numberWithFloat:0],
                               [NSNumber numberWithFloat:0.75],
                               [NSNumber numberWithFloat:1],
                               nil];
    
    gradientLayer.frame =  self.view.bounds;
    [self.view.layer insertSublayer:gradientLayer atIndex:0];

    [ibControl setNormalColors:[NSArray arrayWithObjects:
                                [UIColor colorWithHexString:@"ff5d5d"],
                                [UIColor colorWithHexString:@"ce171f"],
                                [UIColor colorWithHexString:@"bb0217"],
                                [UIColor colorWithHexString:@"4e0000"],
                                nil]

                 withLocations:[NSArray arrayWithObjects:
                                [NSNumber numberWithFloat:0],
                                [NSNumber numberWithFloat:0.5],
                                [NSNumber numberWithFloat:0.51],
                                [NSNumber numberWithFloat:1],
                                nil]];
    [ibControl setHighlightColors:[NSArray arrayWithObjects:
                                   [UIColor colorWithHexString:@"ff5d5d"],
                                   [UIColor colorWithHexString:@"bb0217"],
                                   [UIColor colorWithHexString:@"4e0000"],
                                   nil]
                    withLocations:[NSArray arrayWithObjects:
                                   [NSNumber numberWithFloat:0],
                                   [NSNumber numberWithFloat:0.5],
                                   [NSNumber numberWithFloat:1],
                                   nil]];
    
    [countryControl setNormalColors:[NSArray arrayWithObjects:
                                     [UIColor colorWithHexString:@"8bdeff"],
                                     [UIColor colorWithHexString:@"00adfa"],
                                     [UIColor colorWithHexString:@"188cf3"],
                                     [UIColor colorWithHexString:@"0065b7"],
                                     nil]
                      withLocations:[NSArray arrayWithObjects:
                                     [NSNumber numberWithFloat:0],
                                     [NSNumber numberWithFloat:0.5],
                                     [NSNumber numberWithFloat:0.51],
                                     [NSNumber numberWithFloat:1],
                                     nil]];
    [countryControl setHighlightColors:[NSArray arrayWithObjects:
                                        [UIColor colorWithHexString:@"8bdeff"],
                                        [UIColor colorWithHexString:@"00adfa"],
                                        [UIColor colorWithHexString:@"188cf3"],
                                        nil]
                         withLocations:[NSArray arrayWithObjects:
                                        [NSNumber numberWithFloat:0],
                                        [NSNumber numberWithFloat:0.5],
                                        [NSNumber numberWithFloat:1],
                                        nil]];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)aInterfaceOrientation
{
    // only interested in portrait for now
    return (aInterfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Actions

- (IBAction) customControlTapped:(id)aSender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Control tapped"
                                                    message:@"You tapped on the custom control"
                                                   delegate:nil
                                          cancelButtonTitle:@"Close"
                                          otherButtonTitles:nil];
    [alert show];
}

- (IBAction) ibControlTapped:(id)aSender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Control tapped"
                                                    message:@"You tapped on the Interface Builder control"
                                                   delegate:nil
                                          cancelButtonTitle:@"Close"
                                          otherButtonTitles:nil];
    [alert show];
}

- (IBAction) countryTapped:(id)aSender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Control tapped"
                                                    message:@"You tapped on the UK"
                                                   delegate:nil
                                          cancelButtonTitle:@"Close"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
