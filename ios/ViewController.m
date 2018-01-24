//
//  ViewController.m
//  ios
//
//  Created by Chang_Mac on 2017/7/17.
//  Copyright © 2017年 Chang_Mac. All rights reserved.
//

#import "ViewController.h"
#import <rc4/rc4.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)btn{
    
    NSString *str = @"testStr";
    
    NSString *encodeStr = [rc4 encode:str andSecretKey:@"smtx@123"];
    
    NSLog(@"加密字符串: %@",encodeStr);
    
    
    NSString *deEncodeStr = [rc4 decode:encodeStr andSecretKey:@"smtx@123"];
    NSLog(@"解密字符串:%@",deEncodeStr);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
