//
//  LoadTests.m
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Load.h"

@interface LoadTests : XCTestCase {
    Load *_load;
}
@end

@implementation LoadTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _load = [[Load alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    _load = nil;
}

- (void)testInitialisation
{
    XCTAssertNotNil(_load, @"Object should be initialised to an instance of the class");
}

- (void)testLoadReturns10Articles
{
    NSArray *articles = [_load articlesToSearch];
    XCTAssertNotNil(articles);
    XCTAssertTrue(articles.count == 10);
}

@end
