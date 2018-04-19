//
//  define.h
//  CSDK
//
//  Created by TC on 2018/3/28.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#ifndef define_h
#define define_h


//少用宏，编译速度会快



//颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)
#define HEXCOLOR(hex) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16)) / 255.0 green:((float)((hex & 0xFF00) >> 8)) / 255.0 blue:((float)(hex & 0xFF)) / 255.0 alpha:1]
#define HEXCOLORA(hex,a) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16)) / 255.0 green:((float)((hex & 0xFF00) >> 8)) / 255.0 blue:((float)(hex & 0xFF)) / 255.0 alpha:a]

//系统高度
//设备屏幕frame
#define ScreenFrame                         [[UIScreen mainScreen] bounds]
//状态栏
#define ScreenStatusBarFrameRect                 [[UIApplication sharedApplication] statusBarFrame]
//状态栏高度
#define ScreenStatusBarHeight                    ScreenStatusBarFrameRect.size.height
//屏幕宽高
#define ScreenHeight                             ScreenFrame.size.height
#define ScreenWidth                              ScreenFrame.size.width
//与最小屏的比率
#define ScreenRate CScreenWidth/320
//导航栏高度
#define ScreenNaviBarHeight  44.0f
//tabbar高度
#define ScreenTababarHeight  49.0f
//导航栏加状态栏总高度
#define ScreenTopHeight   (ScreenNaviBarHeight+ScreenStatusBarHeight)
//减去状态栏和导航栏的高度
#define ScreenHeightNoStatusAndNoNaviBar       (ScreenHeight - ScreenStatusBarHeight-ScreenNaviBarHeight)
/// 底部安全区域
#define ScreenBottomHeight ((ScreenHeight == 812.0) ? 34 : 0)
//减去状态栏和底部菜单栏高度
#define ScreenHeightNoTopAndNoTabBar       (ScreenHeight - ScreenTopHeight-ScreenTababarHeight)

/**
 导航栏的frame和高度
 */
#define ScreenNaviRect   self.navigationController.navigationBar.frame
#define ScreenNaviHeight  self.navigationController.navigationBar.frame.size.height
//减去状态栏和底部菜单栏以及导航栏高度
#define ScreenHeightNoStatusAndNoTabBarNoNavBarHeight       (ScreenFrameRect.size.height-ScreenStatusBarHeight-49.0f - 44.0f-ScreenBottomHeight)


//UserDefault    &&  keys
#define UserDefault [NSUserDefaults standardUserDefaults]
#define UD_UseInfo  @"UserDefaultUserInfo"  ///用户信息



//打印
#ifdef DEBUG
#define LogALL(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);//打印方法名，行数和内容
#define Log(...) NSLog(__VA_ARGS__)                                                                  //只打印内容
#define LogMethod() NSLog(@" %s ,%d",__FUNCTION__,__LINE__);                                         //打印方法名，行数


#else
#define LogALL(...)
#define Log(...)
#define LogMethod()

#endif

//判空
#define UnNill(objc) (objc && ![objc isKindOfClass:[NSNull class])

//weakSelf  && strongSelf
#define WeakSelf   __weak __typeof__(self) weakSelf = self;
#define StrongSelf __strong __typeof(self) strongSelf = weakSelf;










#endif /* define_h */
