//
//  NIBModalController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 9/26/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "NIBModalController.h"

@interface NIBModalController ()

@end

@implementation NIBModalController

- (IBAction)onRemoveButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
