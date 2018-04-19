//
//  UIButton+Extenstion.m
//  CSDK
//
//  Created by TC on 2018/4/16.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "UIButton+Extenstion.h"

@implementation UIButton (Extenstion)

/**
 添加nomal状态的button及属性
 */
+(UIButton *)addNomalButtonText:(NSString *)text textColor:(UIColor *)textColor imageName:(NSString *)imgName Type:(UIButtonType)type target:(id)target selector:(SEL)selector inView:(UIView *)inView{
    UIButton * button = [UIButton buttonWithType:type];
    if (text) {
        [button setTitle:text forState:UIControlStateNormal];
    }
    
    if (textColor) {
        [button setTitleColor:textColor forState:UIControlStateNormal];
    }
    if (imgName) {
        [button setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    }
    if (target && selector) {
        [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    
    return button;
}

/**
 设置按钮的图片
 */
-(void)setNomalImage:(UIImage *)image selectImage:(UIImage *)selectImage{
    [self setImage:image forState:UIControlStateNormal];
    [self setImage:selectImage forState:UIControlStateSelected];
}
/**
 设置按钮的文字
 */
-(void)setNomalTitle:(NSString *)title selectTitle:(NSString *)selectTitle{
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitle:selectTitle forState:UIControlStateSelected];
}
/**
 设置按钮的文字颜色
 */
-(void)setnomalTitleColor:(UIColor *)color selectTitleColor:(UIColor *)selectColor{
    [self setTitleColor:color forState:UIControlStateNormal];
    [self setTitleColor:selectColor forState:UIControlStateSelected];
}



@end
