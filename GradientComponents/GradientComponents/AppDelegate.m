//
//  AppDelegate.m
//  GradientComponents
//
//  Created by Michael Stringer on 23/01/2012.
//  Copyright (c) 2012 Michael Stringer. All rights reserved.
//

#import "AppDelegate.h"

#import "MainViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL) application:(UIApplication *)aApplication didFinishLaunchingWithOptions:(NSDictionary *)aLaunchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
