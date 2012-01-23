//
//  MainViewController.m
//  GradientComponents
//
//  Created by Michael Stringer on 23/01/2012.
//  Copyright (c) 2012 Michael Stringer. All rights reserved.
//

#import "MainViewController.h"

#import "UIColor+Hex.h"

@implementation MainViewController

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Actions

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
