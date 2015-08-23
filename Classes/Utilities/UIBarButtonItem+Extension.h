//
// Created by bombuu on 15/8/22.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+(UIBarButtonItem *)barButtonItemWithTarget:(id)target Action:(SEL)action image:(NSString *)imagePath AndSelectedImage:(NSString * )selectedImagePath;
@end