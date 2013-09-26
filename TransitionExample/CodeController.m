//
//  CodeController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 9/26/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "CodeController.h"
#import "TransitionDelegate.h"
#import "CodeModalController.h"

@interface CodeController ()
@property (nonatomic, strong) TransitionDelegate *transitionController;
@end

@implementation CodeController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor colorWithRed:19/255.f green:141/255.f blue:255/255.f alpha:1];
    self.transitionController = [[TransitionDelegate alloc] init];
    
    UIButton *presentButton = [UIButton buttonWithType:UIButtonTypeCustom];
    presentButton.frame = CGRectMake(281, 474, 206, 55);
    presentButton.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [presentButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [presentButton addTarget:self action:@selector(onPresentButton:) forControlEvents:UIControlEventTouchUpInside];
    [presentButton setTitle:@"Present Modal" forState:UIControlStateNormal];
    presentButton.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    [self.view addSubview:presentButton];
    
    UILabel *codeLabel = [[UILabel alloc] initWithFrame:CGRectMake(336, 40, 97, 21)];
    codeLabel.text = @"Testing Code";
    codeLabel.backgroundColor = [UIColor clearColor];
    codeLabel.textColor = [UIColor whiteColor];
    codeLabel.font = [UIFont systemFontOfSize:15];
    codeLabel.textAlignment = NSTextAlignmentCenter;
    codeLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    [self.view addSubview:codeLabel];
}

- (void)onPresentButton:(id)sender {
    CodeModalController *controller = [[CodeModalController alloc] init];
    controller.transitioningDelegate = self.transitionController;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
