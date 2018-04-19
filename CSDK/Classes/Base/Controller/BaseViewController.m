//
//  BaseViewController.m
//  CSDK
//
//  Created by TC on 2018/3/30.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIGestureRecognizerDelegate>

@end

@implementation BaseViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //侧滑失效
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.delegate = self;
        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    }
    /* 全屏返回
     // 获取系统自带滑动手势的target对象
     id target = self.interactivePopGestureRecognizer.delegate;
     
     // 创建全屏滑动手势，调用系统自带滑动手势的target的action方法
     UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
     
     // 设置手势代理，拦截手势触发
     pan.delegate = self;
     
     // 给导航控制器的view添加全屏滑动手势
     [self.view addGestureRecognizer:pan];
     
     // 禁止使用系统自带的滑动手势
     self.interactivePopGestureRecognizer.enabled = NO;
     */
    
    
    
}
- (void)setCanPopGesture:(BOOL)canPopGesture{
    _canPopGesture = canPopGesture;
    self.navigationController.interactivePopGestureRecognizer.enabled = canPopGesture;
    
}
- (void)setNaviTitleColor:(UIColor *)naviTitleColor{
    _naviTitleColor = naviTitleColor;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:naviTitleColor}];
}
- (void)setNaviTitleFontSize:(NSInteger)naviTitleFontSize{
    _naviTitleFontSize = naviTitleFontSize;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:naviTitleFontSize]}];
}
-(UIBarButtonItem *)naviSpaceOffset:(CGFloat)width{
    UIBarButtonItem * space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:@selector(clickNaviLeft)];
    space.width = width;
    return space;
}
-(UIBarButtonItem *)setBarButtonImage:(UIImage *)image{
    UIBarButtonItem * left = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(clickNaviLeft)];
    return left;
}
/**
 设置导航栏左侧按钮文字
 */
-(void)setNaviBarLeftText:(NSString *)text{
    
    UIBarButtonItem * left = [[UIBarButtonItem alloc]initWithTitle:text style:UIBarButtonItemStylePlain target:self action:@selector(clickNaviLeft)];
    UIBarButtonItem * space = [self naviSpaceOffset:-10];
    self.navigationItem.leftBarButtonItems = @[space,left];
}
/**
 设置导航栏左侧按钮图片名称
 */
-(void)setNaviBarLeftImageName:(NSString *)imgName{
    UIBarButtonItem * left = [self setBarButtonImage:[UIImage imageNamed:imgName]];
    UIBarButtonItem * space = [self naviSpaceOffset:-10];
    self.navigationItem.leftBarButtonItems = @[space,left];
}


/**
 设置导航栏左侧按钮图片及设置大小
 */
-(void)setNaviBarLeftImageName:(NSString *)imgName size:(CGSize)imgSize{
    [self setBarButtonImage:[UIImage imageWithImage:[UIImage imageNamed:imgName] scaledToSize:imgSize]];
}










- (void)clickNaviLeft{
    if (self.navigationController.viewControllers.count > 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}
-(void)clickNaviRight{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}


@end
