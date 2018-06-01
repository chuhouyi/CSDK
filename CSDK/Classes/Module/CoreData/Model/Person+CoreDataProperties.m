//
//  Person+CoreDataProperties.m
//  CSDK
//
//  Created by TC on 2018/5/24.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//
//

#import "Person+CoreDataProperties.h"

@implementation Person (CoreDataProperties)

+ (NSFetchRequest<Person *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Person"];
}

@dynamic age;
@dynamic city;
@dynamic hobies;
@dynamic name;
@dynamic weight;

@end
