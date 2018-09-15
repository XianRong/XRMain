//
//  XRAppDelegate.m
//  XRMain
//
//  Created by yhtyhrt6@qq.com on 09/15/2018.
//  Copyright (c) 2018 yhtyhrt6@qq.com. All rights reserved.
//

#import "XRAppDelegate.h"
#import "XRMainAPI.h"
#import "TextVC.h"

@implementation XRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc]init];
    UIViewController *vc = [XRMainAPI rootTabBarCcontroller];
    
    [XRMainAPI setNavBarGlobalBarColor:[UIColor orangeColor]];
    [XRMainAPI setNavBarGlobalTextColor:[UIColor whiteColor] andFontSize:20];
    
    [XRMainAPI addChildVC:[TextVC new]  titleName:@"主页" normalImageName:@"tabar_home_normal" selectedImageName:@"tabar_home_selected" isRequiredNavController:YES];
    
    [XRMainAPI addChildVC:[TextVC new] titleName:@"发现" normalImageName:@"tabar_discover_normal" selectedImageName:@"tabar_discover_selected" isRequiredNavController:YES];
    
    [XRMainAPI addChildVC:[TextVC new] titleName:@"我的" normalImageName:@"tabar_my_normal" selectedImageName:@"tabar_my_selected" isRequiredNavController:YES];
    
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}



@end
