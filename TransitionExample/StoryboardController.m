//
//  StoryboardMainController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 9/26/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "StoryboardController.h"
#import "TransitionDelegate.h"

@interface StoryboardController ()
@property (nonatomic, strong) TransitionDelegate *transitionController;
@end

@implementation StoryboardController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.transitionController = [[TransitionDelegate alloc] init];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController *controller = [segue destinationViewController];
    controller.transitioningDelegate = self.transitionController;
}

@end
