//
//  main.m
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Search.h"
#import "NSPredicate+SearchType.h"
#import "Load.h"
#import "ParamChecker.h"

#if __has_feature(objc_arc)
#define MDLog(format, ...) CFShow((__bridge CFStringRef)[NSString stringWithFormat:format, ##__VA_ARGS__]);
#else
#define MDLog(format, ...) CFShow([NSString stringWithFormat:format, ##__VA_ARGS__]);
#endif

int main(int argc, const char *argv[])
{
    @autoreleasepool
    {
        NSMutableArray *arguments = [NSMutableArray array];
        for (int i = 0; i < argc; i++) {
            [arguments addObject:[NSString stringWithUTF8String:argv[i]]];
        }

        if (![ParamChecker validParams:argc Params:arguments]) {
            printf("To use this utility you have to supply commands in the following format:");
            printf("\n\n ./ArticleSearch [operator] [texttosearch]");
            printf("\n\n[operator] choice between AND or OR");
            printf("\n\n[texttosearch] a comma separated string of words to search for");
            printf("\n\n\nThere is also a special parameter to show the test outputs:");
            printf("\n\n-showtests");
            printf("\n\nE.g. ./ArticleSearch -showtests");
            exit(1);
        }

        Search *search = [[Search alloc] initWithLoad:[[Load alloc] init]];
        if ([[NSString stringWithUTF8String:argv[1]] isEqualToString:@"showtests"]) {
            // insert code here...
            MDLog(@"******************************************************************");
            MDLog(@"Below are the results of the pre-defined searches");
            MDLog(@"******************************************************************");

            Search *search = [[Search alloc] initWithLoad:[[Load alloc] init]];

            MDLog(@"Care Quality Commission OR results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:CareOrQualityOrCommission]]);
            MDLog(@"September 2004 OR results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:SeptemberOr2004]]);
            MDLog(@"General population generally OR results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:GeneralOrPopulationOrGenerally]]);
            MDLog(@"Care Quality commission admission AND results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:CareAndQualityAndCommissionAndAdmission]]);
            MDLog(@"General population Alzheimer AND results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:GeneralAndPopulationAndAlzheimer]]);
            exit(1);
        }

        NSString *operator= [NSString stringWithUTF8String:argv[1]];
        NSString *searchTerms = [NSString stringWithUTF8String:argv[2]];

        NSArray *arrayOfSearchTerms = [searchTerms componentsSeparatedByString:@","];
        MDLog(@"You have chosen the %@ operator", operator);
        MDLog(@"You are searching for: %@", searchTerms);

        NSArray *results =[search  articlesWithPredicate:[NSPredicate predicateFromSearchTerms:arrayOfSearchTerms Operator:operator]];

        MDLog(@"********************************************************************************");
        MDLog(@"Results: %@", results.count > 0 ? results : @"There are no matches for that search string");
        MDLog(@"********************************************************************************");
    }
    return 0;
}
