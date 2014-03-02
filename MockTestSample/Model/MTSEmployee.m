//
//  MTSEmployee.m
//  MockTestSample
//
//  Created by Shoichi Matsuda on 2014/03/02.
//  Copyright (c) 2014年 Shoichi Matsuda. All rights reserved.
//

#import "MTSEmployee.h"

@implementation MTSEmployee

- (id)initWithIsIosEngineer:(BOOL)isIosEngineer {
    self = [super init];
    if (self) {
        _isIosEngineer = isIosEngineer;
    }
    return self;
}

@end
