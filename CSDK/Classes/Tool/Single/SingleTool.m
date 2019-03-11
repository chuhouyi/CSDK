//
//  SingleTool.m
//  CSDK
//
//  Created by chuhouyi on 2019/3/5.
//  Copyright © 2019 ChuHouyi. All rights reserved.
//

#import "SingleTool.h"


static SingleTool * _sharedInstance;

@implementation SingleTool

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //because has rewrited allocWithZone  use NULL avoid endless loop lol.
        _sharedInstance = [[super allocWithZone:NULL] init];
    });
    
    return _sharedInstance;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [SingleTool sharedInstance];
}

+ (instancetype)alloc
{
    return [SingleTool sharedInstance];
}

- (id)copy
{
    return self;
}

- (id)mutableCopy
{
    return self;
}

- (id)copyWithZone:(struct _NSZone *)zone
{
    return self;
}


@end
