//
//  GLLoginFb.m
//  goLocky
//
//  Created by Chapo on 4/28/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import "GLLoginFb.h"
#import <FacebookSDK/FacebookSDK.h>

@implementation GLLoginFb


- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                            user:(id<FBGraphUser>)user {
    self.profilePicture.profileID = user.id;
    self.name.text = user.name;
    self.email.text = user.username;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        FBLoginView *loginView = [[FBLoginView alloc] initWithReadPermissions:@[@"basic_info", @"email"]];
        
        // Set this loginUIViewController to be the loginView button's delegate
        loginView.delegate = self;
        
        // Align the button in the center horizontally
        loginView.frame = CGRectOffset(loginView.frame,
                                       (self.center.x - (loginView.frame.size.width /4)),
                                       10);
        
        // Align the button in the center vertically
        loginView.center = self.center;
        
        // Add the button to the view
        [self addSubview:loginView];

        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
