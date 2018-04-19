//
//  UIView+Extention.m
//  CSDK
//
//  Created by TC on 2018/3/30.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "UIView+Extention.h"

@implementation UIView (Extention)

#pragma mark - Frame

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}


- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

#pragma mark -View
/**
 添加frame，上下左右，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
             left:(CGFloat)left
            right:(CGFloat)right
              top:(CGFloat)top
           bottom:(CGFloat)bottom{
    if (superView) {
        [superView addSubview:self];
    }
    self.frame = CGRectMake(left, top, superView.width-left-right, superView.height-top-bottom);
}
/**
 添加frame，左上宽高，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
            left:(CGFloat)left
             top:(CGFloat)top
           width:(CGFloat)width
          height:(CGFloat)height{
    if (superView) {
        [superView addSubview:self];
    }
    self.frame = CGRectMake(left, top, width, height);
}
/**
 添加frame，右上宽高，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
           right:(CGFloat)right
             top:(CGFloat)top
           width:(CGFloat)width
          height:(CGFloat)height{
    if (superView) {
        [superView addSubview:self];
    }
    self.frame = CGRectMake(superView.width - width -right, top, width, height);
}
/**
 添加frame，左下宽高，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
            left:(CGFloat)left
          bottom:(CGFloat)bottom
           width:(CGFloat)width
          height:(CGFloat)height{
    if (superView) {
        [superView addSubview:self];
    }
    self.frame = CGRectMake(left, superView.height-bottom-height, width, height);
}
/**
 添加frame，右下宽高，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
           right:(CGFloat)right
          bottom:(CGFloat)bottom
           width:(CGFloat)width
          height:(CGFloat)height{
    if (superView) {
        [superView addSubview:self];
    }
    self.frame = CGRectMake(superView.width-right-width, superView.height-bottom-height, width, height);
}
/**
 添加frame，中心宽高
 */
-(void)addCenterInView:(UIView *)superView
                 width:(CGFloat)width
                height:(CGFloat)height{
    if (superView) {
        [superView addSubview:self];
    }
    self.size = CGSizeMake(width, height);
    self.centerX = superView.width/2;
    self.centerY = superView.height/2;
}
/**
 添加frame，中心宽高，自定义中心
 */
-(void)addCenterInView:(UIView *)superView
                center:(CGPoint)center
                 width:(CGFloat)width
                height:(CGFloat)height{
    if (superView) {
        [superView addSubview:self];
    }
    self.size = CGSizeMake(width, height);
    self.center = center;
}
/**
 添加frame，左上填充，超出屏幕外用负数
 */
-(void)addInView:(UIView *)superView
            left:(CGFloat)left
             top:(CGFloat)top{
    if (superView) {
        [superView addSubview:self];
    }
    self.frame = CGRectMake(left, top, superView.width-left, superView.height-top);
}
/**
 添加到视图并填充
 */
-(void)addFillInView:(UIView *)superView{
    if(superView){
        [superView addSubview:self];
        self.frame = superView.bounds;
    }
}

#pragma mark - Gesture手势
-(void)addTapGestureTarget:(id)target selector:(SEL)selector{
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(selector)];
    [self addGestureRecognizer:tap];
}


@end
