//
//  GLTabBar.h
//  goLocky
//
//  Created by Chapo on 6/19/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GLTabBar : UITabBarController

- (BOOL)tabBarController:(UITabBarController *)tbController shouldSelectViewController:(UIViewController *)viewController;
@end
