//
//  ViewController.m
//  kanzhihu
//
//  Created by MX on 16/1/7.
//  Copyright © 2016年 MX. All rights reserved.
//

#import "ViewController.h"

//FIXME: test import
#import <AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webView = [[UIWebView alloc] init];
    
    NSURL *URL = [NSURL URLWithString:@"http://www.kanzhihu.com/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    [webView loadRequest:request];
    
    [self.view addSubview:webView];
    webView.frame = self.view.bounds;
    
    //FIXME: test AFNetworking
    [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:@"" parameters:nil error:nil];
}


@end
