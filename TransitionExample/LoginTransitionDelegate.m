//
//  LoginTransitionDelegate.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 9/20/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "LoginTransitionDelegate.h"
#import "LoginTransitionController.h"

@implementation LoginTransitionDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    LoginTransitionController *controller = [[LoginTransitionController alloc] init];
    controller.isPresenting = YES;
    return controller;
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    LoginTransitionController *controller = [[LoginTransitionController alloc] init];
    controller.isPresenting = NO;
    return controller;
}

@end
