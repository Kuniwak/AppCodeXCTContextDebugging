//
//  AppCodeTests.m
//  AppCodeTests
//
//  Created by Kuniwak on 2018/08/07.
//  Copyright © 2018年 Kuniwak. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Header.h"

@interface AppCodeTests : XCTestCase
@end

@implementation AppCodeTests


- (void)testExample {
    XCTContext *context = _XCTContextCurrent();
    BOOL x = _XCTContextShouldStartActivity(context, XCTActivityTypeUserCreated);
}


@end
