//
//  CodeModalController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 9/26/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "CodeModalController.h"

@interface CodeModalController ()

@end

@implementation CodeModalController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:231/255.f green:15/255.f blue:36/255.f alpha:1];
    
    UIButton *removeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    removeButton.frame = CGRectMake(281, 474, 206, 55);
    removeButton.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [removeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [removeButton addTarget:self action:@selector(onRemoveButton:) forControlEvents:UIControlEventTouchUpInside];
    [removeButton setTitle:@"Remove Modal" forState:UIControlStateNormal];
    removeButton.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    [self.view addSubview:removeButton];
}

- (void)onRemoveButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
