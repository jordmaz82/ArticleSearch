//
//  ParamCheckerTests.m
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "ParamChecker.h"

@interface ParamCheckerTests : XCTestCase

@end

@implementation ParamCheckerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCorrectParametersReturnTrue
{
    BOOL response = [ParamChecker validParams:3 Params:@[ @"testing", @"AND", @"testing" ]];
    XCTAssertTrue(response);
}

- (void)testInCorrectParametersReturnFalse
{
    BOOL response = [ParamChecker validParams:3 Params:@[ @"123456789", @"WRONG", @"testing" ]];
    XCTAssertFalse(response);
}

- (void)testShowtestsReturnsTrue
{
    BOOL response = [ParamChecker validParams:2 Params:@[ @"", @"showtests" ]];
    XCTAssertTrue(response);
}

- (void)testShowIncorrectShowtestReturnsFalse
{
    BOOL response = [ParamChecker validParams:2 Params:@[ @"", @"showtestswrong" ]];
    XCTAssertFalse(response);
}

- (void)testIncorrectSearchTermReturnsFalse
{
    BOOL response = [ParamChecker validParams:3 Params:@[ @"testing", @"AND", @"" ]];
    XCTAssertFalse(response);
}

@end
