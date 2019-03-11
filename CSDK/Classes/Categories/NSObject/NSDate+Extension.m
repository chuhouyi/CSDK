//
//  NSDate+Extension.m
//  CSDK
//
//  Created by chuhouyi on 2018/12/11.
//  Copyright © 2018 ChuHouyi. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)
+(int)compareDate:(NSDate*)date01 withDate:(NSDate*)date02{
    int ci;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSComparisonResult result = [date01 compare:date02];
    switch (result)
    {
            //date02比date01大
        case NSOrderedAscending: ci=1; break;
            //date02比date01小
        case NSOrderedDescending: ci=-1; break;
            //date02=date01
        case NSOrderedSame: ci=0; break;
        default: NSLog(@"erorr dates %@, %@", date01, date02); break;
    }
    return ci;
}

- (NSDate *)stringToDate:(NSString *)dateString withDateFormat:(NSString *)format
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:8 * 3600]];
    [dateFormatter setDateFormat:format];//yyyy-MM-dd HH:mm:ss
    NSDate *retdate = [dateFormatter dateFromString:dateString];
    return retdate;
}


@end
