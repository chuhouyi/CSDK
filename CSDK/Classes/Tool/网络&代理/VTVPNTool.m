//
//  VTVPNTool.m
//  VPNTWO
//
//  Created by chuhouyi on 2019/3/7.
//  Copyright © 2019 chuhouyi. All rights reserved.
//

#import "VTVPNTool.h"

#import <ifaddrs.h>
@implementation VTVPNTool
+ (BOOL)isVPNOn
{
    BOOL flag = NO;
    NSString *version = [UIDevice currentDevice].systemVersion;
    // need two ways to judge this.
    if (version.doubleValue >= 9.0)
    {
        NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
        NSArray *keys = [dict[@"__SCOPED__"] allKeys];
        for (NSString *key in keys) {
            if ([key rangeOfString:@"tap"].location != NSNotFound ||
                [key rangeOfString:@"tun"].location != NSNotFound ||
                [key rangeOfString:@"ipsec"].location != NSNotFound ||
                [key rangeOfString:@"ppp"].location != NSNotFound){
                flag = YES;
                break;
            }
        }
    }
    else
    {
        struct ifaddrs *interfaces = NULL;
        struct ifaddrs *temp_addr = NULL;
        int success = 0;
        
        // retrieve the current interfaces - returns 0 on success
        success = getifaddrs(&interfaces);
        if (success == 0)
        {
            // Loop through linked list of interfaces
            temp_addr = interfaces;
            while (temp_addr != NULL)
            {
                NSString *string = [NSString stringWithFormat:@"%s" , temp_addr->ifa_name];
                if ([string rangeOfString:@"tap"].location != NSNotFound ||
                    [string rangeOfString:@"tun"].location != NSNotFound ||
                    [string rangeOfString:@"ipsec"].location != NSNotFound ||
                    [string rangeOfString:@"ppp"].location != NSNotFound)
                {
                    flag = YES;
                    break;
                }
                temp_addr = temp_addr->ifa_next;
            }
        }
        
        // Free memory
        freeifaddrs(interfaces);
    }
    
    
    return flag;
}

/**
 通过遍历UIStatusBar的子view，打印子view的description，通过判断description中是否包含“VPN”
 */
+ (BOOL)isVPNConnected {
    UIApplication *app = [UIApplication sharedApplication];
    UIView *statusView = [app valueForKey:@"statusBar"];
    NSArray *subViews = [[statusView valueForKey:@"foregroundView"] subviews];
    
    Class StatusBarIndicatorItemViewClass = NSClassFromString(@"UIStatusBarIndicatorItemView");
    for (UIView *subView in subViews) {
        Class SubStatusBarIndicatorItemViewClass = [subView class];
        if ([SubStatusBarIndicatorItemViewClass isSubclassOfClass:StatusBarIndicatorItemViewClass]) {
            return [[subView description] containsString:@"VPN"];
        }
    }
    return NO;
}

/**
 访问UIStatusBarIndicatorItemView的私有属性_visible判断是否开启了VPN
 */
+ (BOOL)isVPNConnectedWithStatuBarPrivate {
    UIApplication *app = [UIApplication sharedApplication];
    UIView *statusView = [app valueForKey:@"statusBar"];
    NSArray *subViews = [[statusView valueForKey:@"foregroundView"] subviews];
    
    Class StatusBarIndicatorItemViewClass = NSClassFromString(@"UIStatusBarIndicatorItemView");
    for (UIView *subView in subViews) {
        Class SubStatusBarIndicatorItemViewClass = [subView class];
        if ([SubStatusBarIndicatorItemViewClass isSubclassOfClass:StatusBarIndicatorItemViewClass]) {
            return [[subView valueForKey:@"_visible"] boolValue];
        }
    }
    return NO;
}

+ (BOOL)fetchHttpProxy {
    CFDictionaryRef dicRef = CFNetworkCopySystemProxySettings();
    const CFStringRef proxyCFstr = (const CFStringRef)CFDictionaryGetValue(dicRef,
                                                                           (const void*)kCFNetworkProxiesHTTPProxy);
    NSString* proxy = (__bridge NSString *)proxyCFstr;
    if (proxy != nil) {
        return YES;
    }else if ( proxy != nil || proxy == NULL) {
        return NO;
    }
    return NO;
}


@end
