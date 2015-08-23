//
// Created by bombuu on 15/8/22.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"


@implementation UIBarButtonItem (Extension)
+ (UIBarButtonItem *)barButtonItemWithTarget:(id)target Action:(SEL)action image:(NSString *)imagePath
                            AndSelectedImage:(NSString *)selectedImagePath {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundImage:[UIImage imageNamed:imagePath] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selectedImagePath] forState:UIControlStateSelected];
    btn.size = btn.currentBackgroundImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end