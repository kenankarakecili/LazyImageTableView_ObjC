//
//  AppDelegate.m
//  KenanKarakecili_Exercise
//
//  Created by Kenan Karakecili on 11/1/17.
//  Copyright © 2017 Kenan Karakecili. All rights reserved.
//

#import "AppDelegate.h"
#import "MainVC.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  MainVC *mainVC = [[MainVC alloc] init];
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:mainVC];
  self.window.rootViewController = navigationController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
