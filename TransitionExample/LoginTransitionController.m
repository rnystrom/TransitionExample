//
//  LoginAnimationController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 7/12/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "LoginTransitionController.h"
#import "RNAppDelegate.h"

static NSTimeInterval const DEAnimatedTransitionDuration = 0.5f;
static NSTimeInterval const DEAnimatedTransitionMarcoDuration = 0.15f;

@interface LoginTransitionController ()
@property (nonatomic, weak) UIViewController *presenting;

@end

@implementation LoginTransitionController

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return DEAnimatedTransitionDuration;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)ctx {
    UIViewController *fromController = [ctx viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toController = [ctx viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *from = [fromController view];
    UIView *to = [toController view];
    UIView *container = [ctx containerView];    
    
    CGRect fromFrame = from.frame;
    CGRect toFrame = fromFrame;
    BOOL isPortrait = UIDeviceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation);
    
    if (self.isPresenting) {
        if (isPortrait) {
            toFrame.origin.x = container.bounds.size.width;
            fromFrame.origin.x = -container.bounds.size.width;
        }
        else {
            toFrame.origin.y = container.bounds.size.height;
            fromFrame.origin.y = -container.bounds.size.height;
        }
    }
    else {
        if (isPortrait) {
            toFrame.origin.x = - container.bounds.size.width;
            fromFrame.origin.x = container.bounds.size.width;
        }
        else {
            toFrame.origin.y = - container.bounds.size.height;
            fromFrame.origin.y = container.bounds.size.height;
        }
    }
    
    to.frame = toFrame;
    
    [container addSubview:to];
    
    [UIView animateWithDuration:[self transitionDuration:ctx] delay:0 usingSpringWithDamping:0.98  initialSpringVelocity:11 options:kNilOptions animations:^{
        to.center = CGPointMake(CGRectGetWidth(container.bounds)/2, CGRectGetHeight(container.bounds)/2);
        from.frame = fromFrame;
    }completion:^(BOOL finished){ [ctx completeTransition:YES]; }];
    
//    UIViewController *fromViewController = [ctx viewControllerForKey:UITransitionContextFromViewControllerKey];
//    UIViewController *toViewController = [ctx viewControllerForKey:UITransitionContextToViewControllerKey];
//    UIView *container = [ctx containerView];
//    
//    if (!self.isPresenting) {
//        [container insertSubview:toViewController.view belowSubview:fromViewController.view];
//    }
//    else {
//        toViewController.view.transform = CGAffineTransformMakeScale(0, 0);
//        [container addSubview:toViewController.view];
//    }
//    [container addSubview:toViewController.view];
//    
//    [UIView animateKeyframesWithDuration:DEAnimatedTransitionDuration delay:0 options:0 animations:^{
//        if (!self.isPresenting) {
//            fromViewController.view.transform = CGAffineTransformMakeScale(0, 0);
//        }
//        else {
//            toViewController.view.transform = CGAffineTransformIdentity;
//        }
//    } completion:^(BOOL finished) {
//        [ctx completeTransition:finished];
//    }];
}

@end
