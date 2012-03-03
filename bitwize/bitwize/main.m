//
//  main.m
//  bitwize
//
//  Created by Nestor Pestelos on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        unsigned char a = 0x3c;
        unsigned char b = 0xa9;
        unsigned char c = a | b;
        
        printf("Hex: %x | %x = %x\n", a, b, c);
        
        printf("Decimal %d | %d = %d\n", a, b, c);
        
    }
    return 0;
}

