//
//  MainController.m
//  TransitionExample
//
//  Created by Ryan Nystrom on 7/12/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "MainController.h"
#import "LoginController.h"
#import "LoginTransitionDelegate.h"

@interface MainController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) LoginTransitionDelegate *transitionController;
@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.transitionController = [[LoginTransitionDelegate alloc] init];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    // helps ID the bounds of view
//    self.view.backgroundColor = [UIColor redColor];
}

- (IBAction)onShowLogin:(id)sender {
    LoginController *login = [[LoginController alloc] init];
    login.transitioningDelegate = self.transitionController;
    login.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:login animated:YES completion:nil];
}

- (BOOL)shouldAutorotate {
    return YES;
}

@end
