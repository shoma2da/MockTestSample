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
#import <OCMock/OCMock.h>

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

- (void)testIOSEngineerPercentByMock {
    id mockEmployee1 = [OCMockObject mockForClass:[MTSEmployee class]];
    id mockEmployee2 = [OCMockObject mockForClass:[MTSEmployee class]];
    id mockEmployee3 = [OCMockObject mockForClass:[MTSEmployee class]];
    id mockEmployee4 = [OCMockObject mockForClass:[MTSEmployee class]];
    
    [[[mockEmployee1 stub] andReturnValue:@(YES)] isIosEngineer];
    [[[mockEmployee2 stub] andReturnValue:@(YES)] isIosEngineer];
    [[[mockEmployee3 stub] andReturnValue:@(YES)] isIosEngineer];
    [[[mockEmployee4 stub] andReturnValue:@(NO)] isIosEngineer];
    
    NSArray* employees = @[mockEmployee1, mockEmployee2, mockEmployee3, mockEmployee4];
    
    MTSCompany* company = [[MTSCompany alloc] initWithEmployeeList:employees];
    XCTAssertEqual(75, [company percentageOfIosEngineer]);
}

@end
