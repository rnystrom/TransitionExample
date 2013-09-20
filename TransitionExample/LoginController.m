//
//  LoginController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 7/12/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "LoginController.h"

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // helps ID the bounds of view
//    self.view.backgroundColor = [UIColor purpleColor];
}

- (IBAction)onLogin:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
