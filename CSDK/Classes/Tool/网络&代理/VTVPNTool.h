//
//  VTVPNTool.h
//  VPNTWO
//
//  Created by chuhouyi on 2019/3/7.
//  Copyright © 2019 chuhouyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface VTVPNTool : NSObject

/**
 通过判断tap tun ipsec ppp 这些字段是否在CFNetworkCopySystemProxySettings里来判断vpn是否开启
 测试不灵
 */
+ (BOOL)isVPNOn;
/**
 通过遍历UIStatusBar的子view，打印子view的description，通过判断description中是否包含“VPN”
 这个和下面那个好像在iphoneX上不灵
 */
+ (BOOL)isVPNConnected;

/**
 访问UIStatusBarIndicatorItemView的私有属性_visible判断是否开启了VPN
 */
+ (BOOL)isVPNConnectedWithStatuBarPrivate;

/**
 判断是否使用了代理，并不能准确判断使用了vpn，也可能使用了网络拦截工具
 */
+ (BOOL)fetchHttpProxy;


@end
