//
//  NSMutableDictionary+Extention.m
//  CSDK
//
//  Created by TC on 2018/4/17.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "NSMutableDictionary+Extention.h"

@implementation NSMutableDictionary (Extention)

- (void)safeSetValue:(id)value forKey:(NSString *)key{
    if (![key isKindOfClass:[NSString class]]) {
        Log(@"调用safeSetValue:的key不是字符串");
        return;
    }
    [self setValue:value forKey:key];
}

- (void)safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey{
    if (!aKey) {
        Log(@"调用safeSetObject:的key是nil");
        return;
    }
    if (!anObject) {
        Log(@"调用safeSetObject:的object是nil");
        return;
    }
    [self setObject:anObject forKey:aKey];
    
}




@end
