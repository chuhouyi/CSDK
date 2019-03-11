//
//  NSMutableDictionary+Extention.h
//  CSDK
//
//  Created by TC on 2018/4/17.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Extention)
/*基础知识  setValue和setObject的区别
 1，setValue
 setValue中的key只能为字符串 value可以为nil也可以为空对象[NSNull null]以及全部对象
 2,setObject
 setobject中的key和value可以为除了nil外的任何对象
 */

- (void)safeSetValue:(id)value forKey:(NSString *)key;

- (void)safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey;






@end
