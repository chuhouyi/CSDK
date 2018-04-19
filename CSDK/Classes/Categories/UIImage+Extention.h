//
//  UIImage+Extention.h
//  CSDK
//
//  Created by TC on 2018/3/30.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extention)


/**
 根据文字画出图片
 
 @param title 文字
 @param textColor 文字颜色
 @param font 文字字体
 @return image
 */
+ (UIImage *)imageWithTitle:(NSString *)title color:(UIColor *)textColor fontSize:(CGFloat)font inSize:(CGSize)imgSize;


/**
 将图片进行截取
 
 @param image image
 @param newSize 新的尺寸
 @return image
 */
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;
- (UIImage *)scaledToSize:(CGSize)newSize;


/**
 画出制定颜色的image
 
 @param color 颜色
 @return image
 */
+ (UIImage *)imageWithColor:(UIColor *)color;


/**
 校正图片的方向
 
 @return image
 */
- (UIImage *)fixOrientation;

@end
