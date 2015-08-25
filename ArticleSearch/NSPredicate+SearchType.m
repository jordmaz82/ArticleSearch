//
//  NSPredicate+SearchType.m
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import "NSPredicate+SearchType.h"

@implementation NSPredicate (SearchType)

+ (NSPredicate *)predicateForSearchType:(SearchPredicateType)searchType
{
    NSPredicate *predicate = nil;
    switch (searchType) {
    case CareOrQualityOrCommission:
        predicate = [NSPredicate predicateWithFormat:@"(text contains[cd] 'care') OR (text contains[cd] 'quality') OR (text contains[cd] 'commission')"];
        break;
    case SeptemberOr2004:
        predicate = [NSPredicate predicateWithFormat:@"(text contains[cd] 'September') OR (text contains[cd] '2004')"];
        break;
    case GeneralOrPopulationOrGenerally:
        predicate = [NSPredicate predicateWithFormat:@"(text contains[cd] 'general') OR (text contains[cd] 'population') OR (text contains[cd] 'generally')"];
        break;
    case CareAndQualityAndCommissionAndAdmission:
        predicate = [NSPredicate predicateWithFormat:@"(text contains[cd] 'care') AND (text contains[cd] 'quality') AND (text contains[cd] 'commission') AND (text contains[cd] 'admission')"];
        break;
    case GeneralAndPopulationAndAlzheimer:
        predicate = [NSPredicate predicateWithFormat:@"(text contains[cd] 'general') AND (text contains[cd] 'population') AND (text contains[cd] 'alzheimer')"];
        break;
    default:
        break;
    }
    return predicate;
}

+ (NSPredicate *)predicateFromSearchTerms:(NSArray *)searchTerms Operator:(NSString *)suppliedOperator
{
    NSMutableString *predicateString = [[NSMutableString alloc] init];
    for (int i = 0; i < searchTerms.count; i++) {
        if (i == searchTerms.count - 1) {
            [predicateString appendFormat:@"(text contains[cd] '%@')", searchTerms[i]];
        }
        else {
            [predicateString appendFormat:@"(text contains[cd] '%@') %@ ", searchTerms[i], suppliedOperator];
        }
    }
    return [self predicateWithFormat:[predicateString copy]];
}

@end
