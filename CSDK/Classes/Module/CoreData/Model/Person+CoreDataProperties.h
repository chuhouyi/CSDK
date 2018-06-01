//
//  Person+CoreDataProperties.h
//  CSDK
//
//  Created by TC on 2018/5/24.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//
//

#import "Person+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Person (CoreDataProperties)

+ (NSFetchRequest<Person *> *)fetchRequest;

@property (nonatomic) int16_t age;
@property (nullable, nonatomic, copy) NSString *city;
@property (nullable, nonatomic, copy) NSString *hobies;
@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) float weight;

@end

NS_ASSUME_NONNULL_END
