//
//  Search.h
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Load;

@interface Search : NSObject

@property (nonatomic, strong) Load *load;

- (id)initWithLoad:(Load *)load;

- (NSArray *)articlesWithPredicate:(NSPredicate *)searchPredicate;

@end
