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

int main(int argc, const char *argv[])
{
    @autoreleasepool
    {
        // insert code here...
        NSLog(@"******************************************************************");
        NSLog(@"Below are the results of the pre-defined searches");
        NSLog(@"******************************************************************");

        Search *search = [[Search alloc] initWithLoad:[[Load alloc] init]];

        NSLog(@"Care Quality Commission OR results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:CareOrQualityOrCommission]]);
        NSLog(@"September 2004 OR results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:SeptemberOr2004]]);
        NSLog(@"General population generally OR results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:GeneralOrPopulationOrGenerally]]);
        NSLog(@"Care Quality commission admission AND results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:CareAndQualityAndCommissionAndAdmission]]);
        NSLog(@"General population Alzheimer AND results: %@", [search articlesWithPredicate:[NSPredicate predicateForSearchType:GeneralAndPopulationAndAlzheimer]]);
    }
    return 0;
}
