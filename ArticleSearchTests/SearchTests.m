//
//  SearchTests.m
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Search.h"
#import "Load.h"

@interface SearchTests : XCTestCase {
    Search *_search;
}
@end

@implementation SearchTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _search = [[Search alloc] initWithLoad:[[Load alloc] init]];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    _search = nil;
}

- (void)test_careORqualityORcommission
{
    NSArray *results = [_search articlesWithPredicate:[NSPredicate predicateWithFormat:@"(text contains[cd] 'care') OR (text contains[cd] 'quality') OR (text contains[cd] 'commission')"]];
    XCTAssertNotNil(results);
    XCTAssertTrue(results.count == 7);
    NSArray *expected = @[ @0, @1, @2, @3, @4, @5, @6 ];
    XCTAssertEqualObjects(expected, results);
}

- (void)test_septemberOR2004
{
    NSArray *results = [_search articlesWithPredicate:[NSPredicate predicateWithFormat:@"(text contains[cd] 'September') OR (text contains[cd] '2004')"]];
    XCTAssertNotNil(results);
    XCTAssertTrue(results.count == 1);
    NSArray *expected = @[ @9 ];
    XCTAssertEqualObjects(expected, results);
}

- (void)test_generalORpopulationORgenerally
{
    NSArray *results = [_search articlesWithPredicate:[NSPredicate predicateWithFormat:@"(text contains[cd] 'general') OR (text contains[cd] 'population') OR (text contains[cd] 'generally')"]];
    XCTAssertNotNil(results);
    XCTAssertTrue(results.count == 2);
    NSArray *expected = @[ @6, @8 ];
    XCTAssertEqualObjects(expected, results);
}

- (void)test_careANDqualityANDcommissionANDadmission
{
    NSArray *results = [_search articlesWithPredicate:[NSPredicate predicateWithFormat:@"(text contains[cd] 'care') AND (text contains[cd] 'quality') AND (text contains[cd] 'commission') AND (text contains[cd] 'admission')"]];
    XCTAssertNotNil(results);
    XCTAssertTrue(results.count == 1);
    NSArray *expected = @[ @1 ];
    XCTAssertEqualObjects(expected, results);
}

- (void)test_generalANDpopulationANDalzheimer
{
    NSArray *results = [_search articlesWithPredicate:[NSPredicate predicateWithFormat:@"(text contains[cd] 'general') AND (text contains[cd] 'population') AND (text contains[cd] 'alzheimer')"]];

    XCTAssertNotNil(results);
    XCTAssertTrue(results.count == 1);
    NSArray *expected = @[ @6 ];
    XCTAssertEqualObjects(expected, results);
}
@end
