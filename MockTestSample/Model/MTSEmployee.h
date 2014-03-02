//
//  MTSEmployee.h
//  MockTestSample
//
//  Created by Shoichi Matsuda on 2014/03/02.
//  Copyright (c) 2014年 Shoichi Matsuda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTSEmployee : NSObject

@property (nonatomic, readonly) BOOL isIosEngineer;
- (id)initWithIsIosEngineer:(BOOL)isIosEngineer;

@end
