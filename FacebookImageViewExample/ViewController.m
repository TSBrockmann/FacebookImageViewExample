//
//  ViewController.m
//  FacebookImageViewExample
//
//  Created by Brockmann, Simon on 18.02.16.
//  Copyright © 2016 TSBrockmann. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>


@interface ViewController ()

@property (weak, nonatomic) IBOutlet FBSDKProfilePictureView *profileImageView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)touchUpInsideInvalidateButton:(UIButton *)sender
{
    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me/permissions"
                                       parameters:nil
                                       HTTPMethod:@"DELETE"]
     startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
         [self.profileImageView setNeedsImageUpdate];
     }];
}

@end
