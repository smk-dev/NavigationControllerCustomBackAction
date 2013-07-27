//
//  smkNavigationController.m
//  NavigationControllerCustomBackAction
//
//  Created by smk-dev on 14.07.2013.
//  Copyright (c) 2013 smk-dev. All rights reserved.
//

#import "smkNavigationController.h"

@implementation smkNavigationController

- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
    
    // perform action block
    if (self.customBackAction) {
        self.customBackAction();
        self.customBackAction = nil;
        
        // this is required to stop navigation controller from making pop
        return nil;
    }
    
    // otherwise make standard pop
    return [super popViewControllerAnimated:animated];
}

@end
