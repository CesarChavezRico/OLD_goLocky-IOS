//
//  GLViewController.m
//  goLocky
//
//  Created by Chapo on 3/6/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import "GLViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface GLViewController ()

@end

@implementation GLViewController


// This method will be called when the user information has been fetched
- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                            user:(id<FBGraphUser>)user {
    self.profilePicture.profileID = user.id;
    self.name.text = user.name;
    self.email.text = user.username;
       

}

// Logged-in user experience
- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView {
    UITabBarController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"tab"];
    
    [self presentViewController:vc animated:YES completion:nil];

}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
        // Custom initialization
                // Create a FBLoginView to log the user in with basic, email and likes permissions
        // You should ALWAYS ask for basic permissions (basic_info) when logging the user in
        FBLoginView *loginView = [[FBLoginView alloc] initWithReadPermissions:@[@"basic_info", @"email"]];
        
        // Set this loginUIViewController to be the loginView button's delegate
        loginView.delegate = self;
        
//        // Align the button in the center horizontally
//        loginView.frame = CGRectOffset(loginView.frame,
//               (self.view.center.x - (loginView.frame.size.width /80)),6);

        // Align the button in the center vertically
        loginView.center = self.view.center;
    
        // Add the button to the view
        [self.view addSubview:loginView];
    
    
    
    
    
    
    

	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
