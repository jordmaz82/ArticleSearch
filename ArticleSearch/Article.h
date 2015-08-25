//
//  Article.h
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Article : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) NSNumber *reference;

+ (instancetype)createWithReferenceIdentifier:(NSNumber *)identifier Article:(NSString *)article;
- (id)initWithReferenceIdentifier:(NSNumber *)identifier Article:(NSString *)article;

@end
