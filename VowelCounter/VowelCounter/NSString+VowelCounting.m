//
//  NSString+VowelCounting.m
//  VowelCounter
//
//  Created by Nestor Pestelos on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSString+VowelCounting.h"

@implementation NSString (VowelCounting)

- (int)vowelCount
{
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    
    NSUInteger count = [self length];
    int sum = 0;
    for (int i = 0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        if ([charSet characterIsMember:c]) {
            sum++;
        }
    }
    
    return sum;
}

@end
