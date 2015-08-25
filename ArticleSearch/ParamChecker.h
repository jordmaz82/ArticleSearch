//
//  ParamChecker.h
//  ArticleSearch
//
//  Created by Jordan Mazurke on 25/08/2015.
//  Copyright (c) 2015 Jordan Mazurke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParamChecker : NSObject
+ (BOOL)validParams:(int)argumentCount Params:(NSArray *)params;
@end
