//
//  NSPredicate+SearchType.h
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    CareOrQualityOrCommission = 1,
    SeptemberOr2004 = 2,
    GeneralOrPopulationOrGenerally = 3,
    CareAndQualityAndCommissionAndAdmission = 4,
    GeneralAndPopulationAndAlzheimer = 5
} SearchPredicateType;

@interface NSPredicate (SearchType)

+ (NSPredicate *)predicateForSearchType:(SearchPredicateType)searchType;
+ (NSPredicate *)predicateFromSearchTerms:(NSArray *)searchTerms Operator:(NSString *) suppliedOperator;

@end
