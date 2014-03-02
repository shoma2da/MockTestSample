//
//  MTSCompany.h
//  MockTestSample
//
//  Created by Shoichi Matsuda on 2014/03/02.
//  Copyright (c) 2014年 Shoichi Matsuda. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MTSEmployee;

@interface MTSCompany : NSObject

- (id) initWithEmployeeList:(NSArray*)employees;
- (NSInteger) percentageOfIosEngineer;

@end
