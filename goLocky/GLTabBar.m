//
//  GLTabBar.m
//  goLocky
//
//  Created by Chapo on 6/19/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import "GLTabBar.h"

@implementation GLTabBar

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSInteger tabIndex = self.tabBarItem.tag;
    NSString *sOne = [NSString stringWithFormat:@"%i",tabIndex];
    NSLog(@"tag %@",sOne);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)tabBarController:(UITabBarController *)tbController shouldSelectViewController:(UIViewController *)viewController
{
    [self.tabBar indexOfAccessibilityElement:self.tabBarItem];
    NSInteger tabIndex = self.tabBarItem.tag; //[[tbController viewControllers] indexOfObject:viewController];
    
    //Check to see if the selected index is the one you want to do something else, in this example, it's the second tab, so index is 1
    if(tabIndex == 1)
    {
        NSLog(@"Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        return false;
    }
    NSLog(@"bye");
    return true;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
