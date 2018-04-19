//
//  UILabel+Extention.m
//  CSDK
//
//  Created by TC on 2018/4/16.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "UILabel+Extention.h"

@implementation UILabel (Extention)

+ (UILabel *)addLabelText:(NSString *)text color:(UIColor *)color font:(NSInteger)font isFit:(BOOL)isFit textAlign:(NSTextAlignment)textAlign inView:(UIView *)inView{
    UILabel * label = [[UILabel alloc]init];
    label.textColor = color;
    label.font = [UIFont systemFontOfSize:font];
    if (text) {
        label.text = text;
        if (isFit) {
            [label sizeToFit];
        }
    }
    label.textAlignment = 0;
    if (inView) {
        [inView addSubview:label];
    }
    return  label;
}

+ (UILabel *)addLabelcolor:(UIColor *)color font:(NSInteger)font inView:(UIView *)inView{
    return [UILabel addLabelText:nil color:color font:font isFit:NO textAlign:0 inView:inView];
}


@end
