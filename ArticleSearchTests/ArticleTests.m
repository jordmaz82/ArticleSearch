//
//  ArticleTest.m
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Article.h"

@interface ArticleTests : XCTestCase

@end

@implementation ArticleTests

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

- (void)testInitialisation
{
    NSString *articleText = @"Test Article Contents";
    Article *testArticle = [Article createWithReferenceIdentifier:@1 Article:articleText];
    XCTAssertNotNil(testArticle, @"Object should be initialised to an instance of the class");
    XCTAssertEqualObjects(testArticle.reference, @1, @"The identifier should be initialised to 1");
    XCTAssertTrue([testArticle.text isEqualToString:articleText]);
}
@end
