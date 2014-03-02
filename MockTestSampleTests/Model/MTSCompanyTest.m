//
//  MTSCompanyTest.m
//  MockTestSample
//
//  Created by Shoichi Matsuda on 2014/03/02.
//  Copyright (c) 2014年 Shoichi Matsuda. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MTSCompany.h"
#import "MTSEmployee.h"

@interface MTSCompanyTest : XCTestCase

@end

@implementation MTSCompanyTest

- (void)testIOSEngineerPercentWrong {
    NSArray* employees = @[
                           [[MTSEmployee alloc] initWithIsIosEngineer:true],
                           [[MTSEmployee alloc] initWithIsIosEngineer:true],
                           [[MTSEmployee alloc] initWithIsIosEngineer:true],
                           [[MTSEmployee alloc] initWithIsIosEngineer:false]
                           ];
    
    MTSCompany* company = [[MTSCompany alloc] initWithEmployeeList:employees];
    XCTAssertEqual(75, [company percentageOfIosEngineer]);
}

@end
