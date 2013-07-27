//
//  smkViewController.m
//  NavigationControllerCustomBackAction
//
//  Created by smk-dev on 14.07.2013.
//  Copyright (c) 2013 smk-dev. All rights reserved.
//

#import "smkSecondViewController.h"
#import "smkNavigationController.h"

@implementation smkSecondViewController

@synthesize textView = _textView;

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // show navigation bar
    [UIView animateWithDuration:0.3f animations:^{
        self.navigationController.navigationBarHidden = NO;
        self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
        
    } completion:nil];
    
    // custom back action
    __weak typeof(self) _self_ = self;
    [(smkNavigationController *)self.navigationController setCustomBackAction:^{
        [_self_  customBackAction];
    }];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    // remove
    [(smkNavigationController *)self.navigationController setCustomBackAction:nil];
}

- (void)customBackAction {
    
    [UIView animateWithDuration:0.3f animations:^{
        self.navigationController.navigationBarHidden = YES;
        self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
        
    } completion:^(BOOL finished) {
        [(smkNavigationController *)self.navigationController popViewControllerAnimated:YES];
    }];
}

@end
