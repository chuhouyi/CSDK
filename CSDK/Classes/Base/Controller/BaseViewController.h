//
//  BaseViewController.h
//  CSDK
//
//  Created by TC on 2018/3/30.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController



/**
 导航栏标题字体颜色
 */
@property(nonatomic,strong) UIColor *  naviTitleColor;

/**
 导航栏标题字体大小
 */
@property(nonatomic,assign) NSInteger  naviTitleFontSize;

/**
 导航栏背景颜色
 */
@property(nonatomic,strong) UIColor * naviBarBackGroundColor;
/**
 是否可以侧滑
 */
@property(nonatomic,assign) BOOL  canPopGesture;

/**
 设置导航栏左侧按钮文字
 */
-(void)setNaviBarLeftText:(NSString *)text;
/**
 设置导航栏左侧按钮图片名称
 */
-(void)setNaviBarLeftImageName:(NSString *)imgName;
/**
 设置导航栏左侧按钮图片及设置大小
 */
-(void)setNaviBarLeftImageName:(NSString *)imgName size:(CGSize)imgSize;


/**
 点击导航栏左侧
 */
-(void)clickNaviLeft;
/**
 点击导航栏右侧
 */
-(void)clickNaviRight;


@end
