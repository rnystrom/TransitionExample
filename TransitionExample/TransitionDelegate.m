//
//  LoginTransitionDelegate.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 9/20/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "TransitionDelegate.h"
#import "TransitionController.h"

@implementation TransitionDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    TransitionController *controller = [[TransitionController alloc] init];
    controller.isPresenting = YES;
    return controller;
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    TransitionController *controller = [[TransitionController alloc] init];
    controller.isPresenting = NO;
    return controller;
}

@end
