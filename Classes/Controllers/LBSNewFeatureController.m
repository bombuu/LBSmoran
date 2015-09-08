//
//  LBSNewFeatureController.m
//  LBSmoran
//
//  Created by bombuu on 15/9/4.
//  Copyright (c) 2015 bombuu. All rights reserved.
//

#import "LBSNewFeatureController.h"
#import "UIView+Extension.h"
#define kNewFeaturePageNumber 3

@interface LBSNewFeatureController ()<UIScrollViewDelegate>
@property(nonatomic, weak) UIPageControl *uiPageControl;
@property(nonatomic, weak) UIImageView *uiImageView;

@end

@implementation LBSNewFeatureController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIScrollView *newFeatureScrollView = [[UIScrollView alloc] init];
    newFeatureScrollView.frame = self.view.bounds;
    newFeatureScrollView.backgroundColor = [UIColor redColor];
    newFeatureScrollView.contentSize = CGSizeMake(newFeatureScrollView.width * kNewFeaturePageNumber, newFeatureScrollView.height);
    newFeatureScrollView.pagingEnabled = YES;
    newFeatureScrollView.bounces = NO;
    newFeatureScrollView.showsHorizontalScrollIndicator = NO;
    newFeatureScrollView.delegate = self;
    [self.view addSubview:newFeatureScrollView];

    for (int i = 0; i < kNewFeaturePageNumber; ++i) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"p%d", i+1]];

        UIImageView *newFeatureImageView = [[UIImageView alloc] initWithImage:image];
        newFeatureImageView.contentMode = UIViewContentModeCenter;
        newFeatureImageView.y = 0;
        newFeatureImageView.x = i * newFeatureImageView.width;
        [newFeatureScrollView addSubview:newFeatureImageView];
        if (i == kNewFeaturePageNumber - 1) {
            [self getLastNewFeatureImageView:newFeatureImageView];
        }
    }

    UIPageControl *uiPageControl = [[UIPageControl alloc] init];
    uiPageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
    uiPageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    uiPageControl.width = 100;
    uiPageControl.numberOfPages = kNewFeaturePageNumber;
    uiPageControl.center = CGPointMake(self.view.center.x, self.view.center.y * 1.85f);
    uiPageControl.userInteractionEnabled = NO;
    self.uiPageControl = uiPageControl;
    [self.view addSubview:uiPageControl];

}

- (void)getLastNewFeatureImageView:(UIImageView *)view {

    UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [shareBtn setTitle:@"立即进入" forState:UIControlStateNormal];
    [shareBtn addTarget:self action:@selector(enterMainScreen) forControlEvents:UIControlEventTouchUpInside];
    shareBtn.width = 100;
    shareBtn.height = 50;
    shareBtn.center = CGPointMake(100, self.view.center.y * 1.9f);
    [view addSubview:shareBtn];
//    shareBtn.

}

- (void)enterMainScreen {

}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    int page = (int) (scrollView.contentOffset.x / scrollView.width + 0.5f);
    self.uiPageControl.currentPage = page;
}

@end
