//
//  LBSTabbarController.m
//  LBSTabbarController
//
//  Created by bombuu on 15/8/22.
//  Copyright (c) 15/8/22 bombuu. All rights reserved.
//


#import "LBSTabbarController.h"
#import "LBSProfile.h"
#import "LBSquareViewController.h"
#import "CustomNavigationViewController.h"


@interface LBSTabbarController ()

@end

@implementation LBSTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    LBSquareViewController *lbSquareViewController = [[LBSquareViewController alloc] init];
    [self addChildControllerWithWithViewController:lbSquareViewController AndTitle:@"广场"
                                    AndNormalImage:@"square"
                                  AndSelectedImage:@"square_selected"];


    LBSProfile *lbsProfile = [[LBSProfile alloc] init];
    [self addChildControllerWithWithViewController:lbsProfile AndTitle:@"我的"
                                    AndNormalImage:@"my"
                                  AndSelectedImage:@"my_selected"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addChildControllerWithWithViewController:(UIViewController *)viewController AndTitle:(NSString *)title AndNormalImage:(NSString *)normalImagePath AndSelectedImage:(NSString *)selectedImagePath{
    viewController.title = title;
    viewController.tabBarItem.title = title;
    viewController.tabBarItem.image = [UIImage imageNamed:normalImagePath];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImagePath]
                                                        imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSMutableDictionary *normalFontInTabbar = [NSMutableDictionary dictionary];
    normalFontInTabbar[NSForegroundColorAttributeName] = [UIColor grayColor];
    [viewController.tabBarItem setTitleTextAttributes:normalFontInTabbar
                                             forState:UIControlStateNormal];
    NSMutableDictionary *selectedFontInTabbar = [NSMutableDictionary dictionary];
    selectedFontInTabbar[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [viewController.tabBarItem setTitleTextAttributes:selectedFontInTabbar
                                             forState:UIControlStateSelected];

    CustomNavigationViewController *uiNavigationController = [[CustomNavigationViewController alloc]
                                                                              initWithRootViewController:viewController];

    [self addChildViewController:uiNavigationController];

}

@end
