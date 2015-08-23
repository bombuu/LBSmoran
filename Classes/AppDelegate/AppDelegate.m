//
//  AppDelegate.m
//  LBSmoran
//
//  Created by bombuu on 15/8/21.
//  Copyright (c) 2015 bombuu. All rights reserved.
//


#import "AppDelegate.h"
#import "LBSTabbarController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] init];
    self.window.frame = [[UIScreen mainScreen] bounds];


    LBSTabbarController *uiTabBarController = [[LBSTabbarController alloc] init];
    

//    addsubview for cameraicon
    UIButton *cameraButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [cameraButton setImage:[UIImage imageNamed:@"publish"] forState:UIControlStateNormal];
    [cameraButton setFrame:CGRectMake(0, 0, 90, 90)];
    cameraButton.center = CGPointMake([UIScreen mainScreen].bounds.size.width * 0.5f,[UIScreen mainScreen].bounds.size.height - uiTabBarController.tabBar.bounds.size.height);


    [uiTabBarController.view addSubview:cameraButton];


    self.window.rootViewController = uiTabBarController;
    [self.window makeKeyAndVisible];


    return YES;
}




@end