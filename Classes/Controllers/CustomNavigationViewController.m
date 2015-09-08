//
// Created by bombuu on 15/8/22.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "CustomNavigationViewController.h"
#import "UIBarButtonItem+Extension.h"
#import "PreDefine.h"
#import "UIView+Extension.h"

@implementation CustomNavigationViewController {

}



+ (void)initialize {
    // set title color and title backgroundcolor
    UINavigationBar *uiNavigationBar = [UINavigationBar appearance];
    [uiNavigationBar setBarTintColor:kApplicationMainColorInOrange];
    NSMutableDictionary *titleTextAttributes = [NSMutableDictionary dictionary];
    titleTextAttributes[NSForegroundColorAttributeName] = kApplicationMainColorInWhite;
    [uiNavigationBar setTitleTextAttributes:titleTextAttributes];

    //set subtext color(Normal State and Disabled State)
    UIBarButtonItem *uiNavigationItem = [UIBarButtonItem appearance];
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = kApplicationMainColorInWhite;
    [uiNavigationItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];

    NSMutableDictionary *disabledTextAttrs = [NSMutableDictionary dictionary];
    disabledTextAttrs[NSForegroundColorAttributeName] = kApplicationMainColorInOrange;
    [uiNavigationItem setTitleTextAttributes:disabledTextAttrs forState:UIControlStateDisabled];


}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {

    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithTarget:self
                                                                                            Action:@selector(back:)
                                                                                             image:@"backBtn"
                                                                                  AndSelectedImage:@"backBtn_selected"];
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemWithTarget:self
                                                                                              Action:@selector(post:)
                                                                                               image:@"post"
                                                                                    AndSelectedImage:@"post_selected"];

    }
    
    [super pushViewController:viewController animated:animated];


}

- (void)post:(UIButton *)sender {
    [self popToRootViewControllerAnimated:YES];
}

- (void)back:(UIButton *)sender {
    [self popViewControllerAnimated:YES];

}
@end