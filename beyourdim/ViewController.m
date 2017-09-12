//
//  ViewController.m
//  beyourdim
//
//  Created by lipengzhang on 17/9/11.
//  Copyright © 2017年 lipengzhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    webView = [[UIWebView alloc] init];
    NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://m.touzi.com"]];
    [self.view addSubview:webView];
    [webView loadRequest:request];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidLayoutSubviews{
    webView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) webViewDidStartLoad:(UIWebView *)webView{
    UIView *view = [[UIView  alloc] initWithFrame:CGRectMake(0,0,320,480)];
    [view setTag:108];
    [view setBackgroundColor:[UIColor blackColor]];
    [view setAlpha:0.5];
    [self.view addSubview:view];

}


@end
