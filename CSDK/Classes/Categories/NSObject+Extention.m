//
//  NSObject+Extention.m
//  CSDK
//
//  Created by TC on 2018/3/30.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "NSObject+Extention.h"
#import <objc/message.h>

// 定义关联的key
static const char *key = "newProperty";
@implementation NSObject (Extention)

- (NSString *)newProperty{
    // 根据关联的key，获取关联的值。
    return objc_getAssociatedObject(self, key);
}
- (void)setNewProperty:(NSString *)newProperty{
    /*
     第一个参数：给哪个对象添加关联
     第二个参数：关联的key，通过这个key获取
     第三个参数：关联的value
     第四个参数:关联的策略
     */
    objc_setAssociatedObject(self, key, newProperty, OBJC_ASSOCIATION_RETAIN_NONATOMIC);    
}

#pragma mark - Safe
-(id)safeValueForKey:(NSString *)key{
    if (self) {
        if ([self isKindOfClass:[NSDictionary class]]) {
            NSDictionary * dict = (NSDictionary *)self;
            if (dict.allKeys.count > 0) {
                return [dict objectForKey:key];
            }else{
                Log(@"调用safeValueForKey:字典的key值个数为零");
                return nil;
            }
        }else{
            Log(@"调用safeValueForKey:方法的数据不是字典==%@",NSStringFromClass([self class]));
            return nil;
        }
    }else{
        Log(@"调用safeValueForKey:方法的数据是空");
        return  nil;
    }
    
}
-(id)safeObjectIfIndex:(NSInteger)index{
    if (self) {
        if ([self isKindOfClass:[NSArray class]]) {
            NSArray * array = (NSArray *)self;
            if (array.count > 0) {
                return [array objectAtIndex:index];
            }else{
                Log(@"调用safeObjectIfIndex:数组的个数为零");
                return nil;
            }
        }else{
            Log(@"调用safeObjectIfIndex:方法的数据不是数组==%@",NSStringFromClass([self class]));
            return nil;
        }
    }else{
        Log(@"调用safeObjectIfIndex:方法的数据是空");
        return  nil;
    }
}

@end
