//
//  ViewController.m
//  CCAFacebookAppActivity
//
//  Created by Jean-Luc Dagon on 28/02/15.
//  Copyright (c) 2015 Cocoapps. All rights reserved.
//

#import "ViewController.h"
#import "UIActivity+CCAFacebookAppActivity.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)actionShareLink:(id)sender
{
    NSArray *activityItems = @[
                               @"Awesome blog!",
                               [NSURL URLWithString:@"http://blog.jldagon.me"],
                               ];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems
                                                                                         applicationActivities:nil];
    [self presentViewController:activityViewController animated:YES completion:nil];
}

- (IBAction)actionShareImage:(id)sender
{
    NSArray *activityItems = @[
                               [UIImage imageNamed:@"yosemite"],
                               ];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems
                                                                                         applicationActivities:nil];
    [self presentViewController:activityViewController animated:YES completion:nil];
}


@end
