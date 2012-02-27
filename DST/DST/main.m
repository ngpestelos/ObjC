//
//  main.m
//  DST
//
//  Created by Nestor Pestelos on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSTimeZone *tz = [NSTimeZone systemTimeZone];
        NSLog(@"Time zone: %@", tz);
        if ([tz isDaylightSavingTime])
            NSLog(@"DST? Yes.");
        else
            NSLog(@"DST? No.");
        
    }
    return 0;
}

