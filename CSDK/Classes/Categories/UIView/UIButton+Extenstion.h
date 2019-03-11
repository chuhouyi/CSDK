//
//  UIButton+Extenstion.h
//  CSDK
//
//  Created by TC on 2018/4/16.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extenstion)
/**
 添加nomal状态的button及属性
 
 @param text 文本
 @param imgName 图片名称
 @param type 类型
 @param target 添加执行方法的target
 @param selector 添加
 @param inView button
 */
+(UIButton *)addNomalButtonText:(NSString *)text textColor:(UIColor *)textColor imageName:(NSString *)imgName Type:(UIButtonType)type target:(id)target selector:(SEL)selector inView:(UIView *)inView;


+(UIButton *)addButtonType:(UIButtonType)type target:(id)target selector:(SEL)selector inView:(UIView *)inView;


/**
 设置按钮的图片
 */
-(void)setNomalImage:(UIImage *)image selectImage:(UIImage *)selectImage;
/**
 设置按钮的文字
 */
-(void)setNomalTitle:(NSString *)title selectTitle:(NSString *)selectTitle;
/**
 设置按钮的文字颜色
 */
-(void)setnomalTitleColor:(UIColor *)color selectTitleColor:(UIColor *)selectColor;



@end
