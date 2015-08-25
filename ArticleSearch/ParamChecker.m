//
//  ParamChecker.m
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import "ParamChecker.h"

@implementation ParamChecker

+ (BOOL)validParams:(int)argumentCount Params:(NSArray *)params
{
    //make sure there are is least one argument and no more than 2
    if (argumentCount == 1 || argumentCount > 3) return NO;
    //if only one argument supplied make sure it is 'showtests'
    if (argumentCount == 2) {
        return [params[1] isEqualToString:@"showtests"];
    }

    NSString *o= params[1];
    if (![o isEqualToString:@"AND"] && ![o isEqualToString:@"OR"] ) return NO;

    NSString *searchTerms = params[2];
    if (searchTerms.length == 0) return NO;

    return YES;
}

@end
