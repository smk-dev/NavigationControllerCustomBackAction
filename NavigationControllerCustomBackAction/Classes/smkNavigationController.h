//
//  smkNavigationController.h
//  NavigationControllerCustomBackAction
//
//  Created by smk-dev on 14.07.2013.
//  Copyright (c) 2013 smk-dev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface smkNavigationController : UINavigationController

@property (nonatomic, copy) void (^customBackAction)(void);

@end
