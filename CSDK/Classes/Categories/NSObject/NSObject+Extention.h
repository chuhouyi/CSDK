//
//  NSObject+Extention.h
//  CSDK
//
//  Created by TC on 2018/3/30.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extention)

#pragma runtime
//给分类添加属性
@property(nonatomic,copy) NSString *  newProperty;

#pragma mark - Safe

/**
 字典的安全获取(NSObject类)
 */
-(id)safeValueForKey:(NSString *)key;

/**
 数组的安全获取(NSObject类)
 */
-(id)safeObjectIfIndex:(NSInteger)index;


@end
