//
//  UILabel+Extention.h
//  CSDK
//
//  Created by TC on 2018/4/16.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Extention)


/**
 添加label及属性

 @param text 文本
 @param color 颜色
 @param font 字体大小
 @param isFit 是否自适应大小
 @param textAlign 排版
 @param inView 父视图
 @return label
 */
+(UILabel *)addLabelText:(NSString *)text
                   color:(UIColor *)color
                    font:(NSInteger)font
                   isFit:(BOOL)isFit
               textAlign:(NSTextAlignment)textAlign
                  inView:(UIView *)inView;


/**
 添加label及属性

 @param color 颜色
 @param font 字体大小
 @param inView 父视图
 @return label
 */
+(UILabel *)addLabelcolor:(UIColor *)color font:(NSInteger)font inView:(UIView *)inView;









@end
