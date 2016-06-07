//
//  JSShareViewController.m
//  JSShareView
//
//  Created by 乔同新 on 16/6/7.
//  Copyright © 2016年 乔同新. All rights reserved.
//

#import "JSShareViewController.h"
#import "JSShareView.h"


@interface JSShareViewController ()

@end

@implementation JSShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.title = @"自定义分享";
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    imageView.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"bg"
                                                                                       ofType:@"png"]];
    [self.view addSubview:imageView];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [JSShareView showShareViewWithPublishContent:@{@"text" :@"传入文字",
                                                   @"image":@"传入 url or image ",
                                                   @"url"  :@"传入链接"}
                                          Result:^(ShareType type, BOOL isSuccess) {
                                              
                                          }];

}


@end
