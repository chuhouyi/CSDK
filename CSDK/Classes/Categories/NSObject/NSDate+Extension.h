//
//  NSDate+Extension.h
//  CSDK
//
//  Created by chuhouyi on 2018/12/11.
//  Copyright © 2018 ChuHouyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)
/*
 * 1 date02比date01大   -1  date02比date01小      0  date02=date01
 */
+(int)compareDate:(NSDate*)date01 withDate:(NSDate*)date02;

/**字符串转日期格式*/
- (NSDate *)stringToDate:(NSString *)dateString withDateFormat:(NSString *)format;


@end
