//
//  LBSSinaAuthorizeController.m
//  LBSmoran
//
//  Created by bombuu on 15/9/8.
//  Copyright (c) 2015 bombuu. All rights reserved.
//

#import "LBSSinaAuthorizeController.h"
//#import "AFNetworking.h"
#define kAppKey 932831765
#define kAppSecret 198ceaa38e40a076efee6732f8d962ff
#define kAccessAddress @"https://api.weibo.com/oauth2/authorize?client_id=932831765&redirect_uri=http://"
//#define kAccessAddress @"http://www.baidu.com"
@interface LBSSinaAuthorizeController ()<UIWebViewDelegate>

@end
@implementation LBSSinaAuthorizeController

- (void)viewDidLoad {

    //1.创建一个UIWebView
    UIWebView *authorizeUIWebView = [[UIWebView alloc] init];
    authorizeUIWebView.delegate = self;
    authorizeUIWebView.frame = self.view.bounds;
    [self.view addSubview:authorizeUIWebView];

    //2.发送请求
    NSURL *autherURL = [[NSURL alloc] initWithString:kAccessAddress];
    NSURLRequest *autherURLRequest = [[NSURLRequest alloc] initWithURL:autherURL];
    [authorizeUIWebView loadRequest:autherURLRequest];


}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request
 navigationType:(UIWebViewNavigationType)navigationType {
    //获取access token
    NSString *url = request.URL.absoluteString;
    NSLog(@"call url:%@", url);
    NSRange matchRange = [url rangeOfString:@"code="];
    if (matchRange.length!=0) {
        NSUInteger fromRange = matchRange.location + matchRange.length;
        NSString *codeValue = [url substringFromIndex:fromRange];
        [self accessTokenWithCode:codeValue];
    }





    return YES;
}

- (void)accessTokenWithCode:(NSString *)value {
    //使用post传递参数
//    AFHTTPRequestOperationManager *mgr   = [AFHTTPRequestOperationManager manager];
    NSMutableDictionary           *param = [NSMutableDictionary dictionary];
    param[@"client_id"]    = @"932831765";
    param[@"client_secret"] = @"198ceaa38e40a076efee6732f8d962ff";
    param[@"grant_type"]   = @"authorization_code";
    param[@"code"]         = value;
    param[@"redirect_uri"] = @"https://";


 }


@end
