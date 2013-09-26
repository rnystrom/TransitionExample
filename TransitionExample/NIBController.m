//
//  NIBViewController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 9/26/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "NIBController.h"
#import "TransitionDelegate.h"
#import "NIBModalController.h"

@interface NIBController ()
@property (nonatomic, strong) TransitionDelegate *transitionController;
@end

@implementation NIBController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.transitionController = [[TransitionDelegate alloc] init];
}

- (IBAction)onPresentButton:(id)sender {
    NIBModalController *controller = [[NIBModalController alloc] init];
    controller.transitioningDelegate = self.transitionController;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
