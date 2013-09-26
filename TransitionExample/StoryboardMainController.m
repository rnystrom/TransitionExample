//
//  StoryboardMainController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 9/26/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "StoryboardMainController.h"
#import "LoginTransitionDelegate.h"

@interface StoryboardMainController ()
@property (nonatomic, strong) LoginTransitionDelegate *transitionController;
@end

@implementation StoryboardMainController

- (id)init {
    if (self = [super init]) {
        _transitionController = [[LoginTransitionDelegate alloc] init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _transitionController = [[LoginTransitionDelegate alloc] init];
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        _transitionController = [[LoginTransitionDelegate alloc] init];
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController *controller = [segue destinationViewController];
    controller.transitioningDelegate = self.transitionController;
}

- (BOOL)shouldAutorotate {
    return YES;
}

@end
