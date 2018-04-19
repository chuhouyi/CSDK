//
//  UIView+Extention.h
//  CSDK
//
//  Created by TC on 2018/3/30.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extention)

//frame
@property(nonatomic,assign)CGFloat  x;
@property(nonatomic,assign)CGFloat  y;
@property(nonatomic,assign,readonly)CGFloat  right;
@property(nonatomic,assign,readonly) CGFloat  bottom;
@property(nonatomic,assign) CGFloat  width;
@property(nonatomic,assign) CGFloat  height;
@property(nonatomic,assign) CGPoint  origin;
@property(nonatomic,assign) CGSize  size;
@property(nonatomic,assign) CGFloat  centerX;
@property(nonatomic,assign) CGFloat  centerY;

//addView


/**
 添加frame，上下左右，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
              left:(CGFloat)left
             right:(CGFloat)right
               top:(CGFloat)top
            bottom:(CGFloat)bottom;
/**
 添加frame，左上宽高，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
            left:(CGFloat)left
             top:(CGFloat)top
           width:(CGFloat)width
          height:(CGFloat)height;
/**
 添加frame，右上宽高，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
           right:(CGFloat)right
             top:(CGFloat)top
           width:(CGFloat)width
          height:(CGFloat)height;
/**
 添加frame，左下宽高，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
            left:(CGFloat)left
          bottom:(CGFloat)bottom
           width:(CGFloat)width
          height:(CGFloat)height;
/**
 添加frame，右下宽高，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
           right:(CGFloat)right
          bottom:(CGFloat)bottom
           width:(CGFloat)width
          height:(CGFloat)height;
/**
 添加frame，中心宽高，中心为父试图的中心
 */
-(void)addCenterInView:(UIView *)superView
           width:(CGFloat)width
          height:(CGFloat)height;
/**
 添加frame，中心宽高，自定义中心
 */
-(void)addCenterInView:(UIView *)superView
                center:(CGPoint)center
                 width:(CGFloat)width
                height:(CGFloat)height;
/**
 添加frame，左上填充，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
            left:(CGFloat)left
             top:(CGFloat)top;


/**
 添加到视图并填充
 */
-(void)addFillInView:(UIView *)superView;

#pragma mark - Gesture手势
-(void)addTapGestureTarget:(id)target selector:(SEL)selector;



@end
