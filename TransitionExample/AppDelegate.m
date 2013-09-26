//
//  RNAppDelegate.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 7/12/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "AppDelegate.h"
#import "NIBController.h"
#import "CodeController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // set both to NO to use the storyboard
    BOOL testCode = NO;
    BOOL testNIB = YES;
    
    if (testNIB || testCode) {
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        
        UIViewController *controller;
        if (testNIB) {
            controller = [[NIBController alloc] init];
        }
        else {
            controller = [[CodeController alloc] init];
        }
        self.window.rootViewController = controller;
        
        self.window.backgroundColor = [UIColor blackColor];
        [self.window makeKeyAndVisible];
    }
    
    return YES;
}

@end
