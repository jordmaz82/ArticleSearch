//
//  Article.m
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import "Article.h"

@implementation Article

+ (instancetype)createWithReferenceIdentifier:(NSNumber *)identifier Article:(NSString *)article
{
    return [[self alloc] initWithReferenceIdentifier:identifier Article:article];
}

- (id)initWithReferenceIdentifier:(NSNumber *)identifier Article:(NSString *)article
{
    self = [super init];
    if (self) {
        self.text = article;
        self.reference = identifier;
    }
    return self;
}

@end
