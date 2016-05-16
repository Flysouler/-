//
//  ViewController.m
//  多语言测试
//
//  Created by guoshuai on 16/2/24.
//  Copyright © 2016年 swiftTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:(CGRect){0, 0 , 300, 50}];
    label.backgroundColor = [UIColor cyanColor];
    label.textColor = [UIColor blackColor];
    label.center = self.view.center;
    [self.view addSubview:label];
    
    label.text = NSLocalizedString(@"welcome", nil);
    
    UIImage *image = [UIImage imageNamed:@"ssss.jpg"];
    CGSize size = image.size;
    
    CGFloat width = self.view.bounds.size.width;
    CGFloat height = size.height/size.width * width;
    
    
    UIImageView *imageView = [[UIImageView alloc]  initWithFrame:(CGRect){0, 50, width, height}];
    imageView.image = image;
    [self.view addSubview:imageView];
    
    
    UIImageView *view = [[UIImageView alloc]  initWithFrame:(CGRect){0, height + 50, width, self.view.bounds.size.height - height- 50}];
    view.image = [UIImage imageNamed:@"talk.png"];
    [self.view addSubview:view];
    
    [self.view bringSubviewToFront:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
