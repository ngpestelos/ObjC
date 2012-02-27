//
//  main.m
//  GetHostname
//
//  Created by Nestor Pestelos on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *h = [NSHost currentHost];
        NSLog(@"Hostname: %@", [h localizedName]);
        
        NSHost *n = [NSHost hostWithName:@"localhost"];
        NSLog(@"Localhost: %@ (%@)", [n name], [n address]);
        
    }
    return 0;
}

