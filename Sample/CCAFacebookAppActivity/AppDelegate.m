//
//  AppDelegate.m
//  CCAFacebookAppActivity
//
//  Created by Jean-Luc Dagon on 28/02/15.
//  Copyright (c) 2015 Cocoapps. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [ViewController new];
    [self.window makeKeyAndVisible];
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    if ([url.scheme hasPrefix:@"fb"]) {
        return [FBAppCall handleOpenURL:url sourceApplication:sourceApplication];
    }
    return NO;
}

@end
