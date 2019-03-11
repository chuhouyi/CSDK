//
//  NSObject+FormatJudgement.h
//  CSDK
//
//  Created by chuhouyi on 2018/12/11.
//  Copyright © 2018 ChuHouyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (FormatJudgement)
/**判断邮箱格式是否正确的代码*/
-(BOOL)isValidateEmail:(NSString *)email;







/**判断是否有特殊字符*/
+(BOOL)isContainsSpecialCharacters:(NSString *)string;

/**身份证号码验证*/
+ (BOOL)verifyIDCardNumber:(NSString *)IDCardNumber;

@end
