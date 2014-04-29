//
//  GLLoginFb.h
//  goLocky
//
//  Created by Chapo on 4/28/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface GLLoginFb : UIView <FBLoginViewDelegate>

@property (strong, nonatomic) IBOutlet FBProfilePictureView *profilePicture;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *email;


@end
