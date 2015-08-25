//
//  Search.m
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import "Search.h"
#import "Load.h"

@implementation Search

- (id)initWithLoad:(Load *)load
{
    self = [super init];
    if (self) {
        self.load = load;
    }
    return self;
}

- (NSArray *)articlesWithPredicate:(NSPredicate *)searchPredicate
{
    NSArray *articles = [self.load articlesToSearch];
    return [[articles filteredArrayUsingPredicate:searchPredicate] valueForKey:@"reference"];
};

@end
