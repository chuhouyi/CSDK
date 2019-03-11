//
//  NSString+Extention.h
//  CSDK
//
//  Created by TC on 2018/3/30.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extention)

/**拼接字符串*/
+(NSAttributedString *)recombinePrice:(CGFloat)CNPrice orderPrice:(CGFloat)unitPrice;


/** MD5加密得到sign字符串*/
+(NSString *) md5String:(NSString *) input;

/**字符串base64加密*/
+ (NSString *)base64StringFromText:(NSString *)text;

@end
