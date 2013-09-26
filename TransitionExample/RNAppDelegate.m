//
//  RNAppDelegate.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 7/12/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "RNAppDelegate.h"
#import "MainController.h"
#import <QuartzCore/QuartzCore.h>

@interface RNAppDelegate ()
@property (nonatomic, strong) UIImageView *backgroundImage;
@end

@implementation RNAppDelegate

static CGFloat backgroundShiftDuration = 0.5f;
static CGFloat backgroundOffset = 40;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    
//    self.backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg"]];
//    self.backgroundImage.frame = CGRectMake(-backgroundOffset, -backgroundOffset, 768 + backgroundOffset*2, 1024 + backgroundOffset*2);
//    self.backgroundImage.contentMode = UIViewContentModeScaleToFill;
//    [self.window addSubview:self.backgroundImage];
//    
//    MainController *main = [[MainController alloc] init];
//    self.window.rootViewController = main;
//    
//    self.window.backgroundColor = [UIColor purpleColor];
//    [self.window makeKeyAndVisible];
    return YES;
}

- (void)paraLeft {
    [UIView animateWithDuration:backgroundShiftDuration
                          delay:0
                        options:0
                     animations:^{
                         CGRect frame = self.backgroundImage.frame;
                         frame.origin.x -= backgroundOffset;
                         self.backgroundImage.frame = frame;
                     }
                     completion:nil];
}

- (void)paraRight {
    [UIView animateWithDuration:backgroundShiftDuration
                          delay:0
                        options:0
                     animations:^{
                         CGRect frame = self.backgroundImage.frame;
                         frame.origin.x += backgroundOffset;
                         self.backgroundImage.frame = frame;
                     }
                     completion:nil];
}

@end
