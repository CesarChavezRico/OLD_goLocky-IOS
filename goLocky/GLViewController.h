//
//  GLViewController.h
//  goLocky
//
//  Created by Chapo on 3/6/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface GLViewController : UIViewController <FBLoginViewDelegate>

@property (strong, nonatomic) IBOutlet FBProfilePictureView *profilePicture;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *email;

@end
