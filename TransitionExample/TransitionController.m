//
//  LoginAnimationController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 7/12/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "TransitionController.h"
#import "AppDelegate.h"

static NSTimeInterval const AnimatedTransitionDuration = 0.5f;

@interface TransitionController ()
@property (nonatomic, weak) UIViewController *presenting;

@end

@implementation TransitionController

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return AnimatedTransitionDuration;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)ctx {
    UIViewController *fromController = [ctx viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toController = [ctx viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *from = [fromController view];
    UIView *to = [toController view];
    UIView *container = [ctx containerView];
    
    CGRect fromFrame = from.frame;
    CGRect toFrame = to.frame;
    
    if (self.isPresenting) {
        toFrame.origin.x = container.bounds.size.width;
        fromFrame.origin.x = -container.bounds.size.width;
    }
    else {
        toFrame.origin.x = - container.bounds.size.width;
        fromFrame.origin.x = container.bounds.size.width;
    }
    
    to.frame = toFrame;
    
    [container addSubview:to];
    
    [UIView animateWithDuration:[self transitionDuration:ctx] delay:0 usingSpringWithDamping:0.8  initialSpringVelocity:5 options:kNilOptions animations:^{
        to.center = CGPointMake(CGRectGetWidth(container.bounds)/2, CGRectGetHeight(container.bounds)/2);
        from.frame = fromFrame;
    }completion:^(BOOL finished){ [ctx completeTransition:YES]; }];
}

@end
