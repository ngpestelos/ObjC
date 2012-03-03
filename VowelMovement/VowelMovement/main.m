//
//  main.m
//  VowelMovement
//
//  Created by Nestor Pestelos on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create the array of strings to devowelize and a container for new ones
        NSArray *oldStrings = [NSArray arrayWithObjects:@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
        
        NSLog(@"old strings: %@", oldStrings);
        
        NSMutableArray *newStrings = [NSMutableArray array];
        
        // Create a list of characters that we'll remove from the string
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
        
        // Declare the block variable
        void (^devowelizer)(id, NSUInteger, BOOL *);
        
        // Assign a block to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurrences of each with an array of string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            
            [newStrings addObject:newString];
        };
        
        // Iterate over the array with our block
        [oldStrings enumerateObjectsUsingBlock:devowelizer];

        NSLog(@"new strings: %@", newStrings);
        
    }
    
    return 0;
}

