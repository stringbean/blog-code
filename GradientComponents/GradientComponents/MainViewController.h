//
//  MainViewController.h
//  GradientComponents
//
//  Created by Michael Stringer on 23/01/2012.
//  Copyright (c) 2012 Michael Stringer. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GradientControl.h"

@interface MainViewController : UIViewController
{
    IBOutlet GradientControl *ibControl;
    IBOutlet GradientControl *countryControl;
}

- (IBAction) countryTapped:(id)aSender;

@end
