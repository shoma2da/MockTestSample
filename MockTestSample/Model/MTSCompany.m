//
//  MTSCompany.m
//  MockTestSample
//
//  Created by Shoichi Matsuda on 2014/03/02.
//  Copyright (c) 2014年 Shoichi Matsuda. All rights reserved.
//

#import "MTSCompany.h"
#import "MTSEmployee.h"

@interface MTSCompany()

@property (nonatomic) NSArray* employees;

@end

@implementation MTSCompany

- (id) initWithEmployeeList:(NSArray*)employees {
    self = [super init];
    if (self) {
        self.employees = employees;
    }
    return self;
}

- (NSInteger) percentageOfIosEngineer {
    NSInteger iosEngineerCount = 0;
    for (MTSEmployee* employee in self.employees) {
        if (employee.isIosEngineer) {
            iosEngineerCount += 1;
        }
    }
    
    return ((float)iosEngineerCount / (float)self.employees.count) * 100;
}

@end
