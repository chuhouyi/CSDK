//
//  PhotoViewController.m
//  CSDK
//
//  Created by TC on 2018/4/17.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "PhotoViewController.h"
#import "PhotoSelectViewController.h"
@interface PhotoViewController ()

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"选择相册首页";
    
    
    
    UIButton * button = [UIButton addNomalButtonText:@"选择照片" textColor:RGB(50, 50, 50) imageName:nil Type:UIButtonTypeCustom target:self selector:@selector(click:) inView:self.view];
    [button addInView:nil left:50 top:50 width:100 height:100];
    
}


//点击选择照片
-(void)click:(UIButton *)sender{
    
    PhotoViewController * photo = [[PhotoViewController alloc]init];
    
    [self.navigationController pushViewController:photo animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
