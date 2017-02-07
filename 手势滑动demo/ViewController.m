//
//  ViewController.m
//  手势滑动demo
//
//  Created by apple on 2017/2/7.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 80, 40);
    btn.center = self.view.center;
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

-(void)push{
    
    OneViewController *oneView = [[OneViewController alloc]init];
    oneView.view.backgroundColor = [UIColor blueColor];
    [self.navigationController pushViewController:oneView animated:YES];
}




@end
