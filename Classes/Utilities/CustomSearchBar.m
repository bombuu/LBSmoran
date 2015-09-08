//
//  CustomSearchBar.m
//  LBSmoran
//
//  Created by bombuu on 15/8/23.
//  Copyright (c) 2015 bombuu. All rights reserved.
//

#import "CustomSearchBar.h"
#import "UIView+Extension.h"


@implementation CustomSearchBar

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

        self.font = [UIFont systemFontOfSize:12.0f];
        self.placeholder = @"请输入想要搜索的文字";
        self.background = [UIImage imageNamed:@"searchbar_textfield_background"];


        UIImage *searchbarIconInLeft = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
        UIImageView *searchbarIconImageView = [[UIImageView alloc] initWithImage:searchbarIconInLeft];
        searchbarIconImageView.width = 30;
        searchbarIconImageView.height = 30;
        self.leftView = searchbarIconImageView;
        searchbarIconImageView.contentMode = UIViewContentModeCenter;
        self.leftViewMode = UITextFieldViewModeAlways;
        //TODO: Add SearchBar Normal Style

    }
    return self;
}


+ (instancetype)searchBar {
    return [[CustomSearchBar alloc] init];
}

- (instancetype)initSearchBarWithFrame:(CGRect)frame AndIconImage:(NSString *)imagePath
                     AndBackgoundImage:(NSString *)backgroundImagePath WithPlaceholder:(NSString *)textPlaceholder {
    self = [super initWithFrame:frame];
    if (self) {
        self.placeholder = textPlaceholder;
        if (backgroundImagePath)
            self.background = [UIImage imageNamed:backgroundImagePath];
        UIImage *searchbarIconInLeft = [UIImage imageNamed:imagePath];
        UIImageView *searchbarIconImageView = [[UIImageView alloc] initWithImage:searchbarIconInLeft];
        searchbarIconImageView.width = 30;
        searchbarIconImageView.height = 30;
        self.leftView = searchbarIconImageView;
        searchbarIconImageView.contentMode = UIViewContentModeCenter;
        self.leftViewMode = UITextFieldViewModeAlways;
        //TODO: Add SearchBar Normal Style

    }
    return self;
}


@end
