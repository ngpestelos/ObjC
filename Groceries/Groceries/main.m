//
//  main.m
//  Groceries
//
//  Created by Nestor Pestelos on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Read in a file as a huge string (ignoring the possibility of an error)
        // Note: Contains proper names
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
    
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // Read in a file as a huge string (ignoring the possibility of an error)
        // Note: Contains regular words and proper names
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding error:NULL];

        // Break it into an array of strings
        NSMutableArray *words = [NSMutableArray arrayWithArray:[wordString componentsSeparatedByString:@"\n"]];
        //NSLog(@"%d", words.count);
        
        [words removeObjectsInArray:names];
        //NSLog(@"%d", words.count);
        
        for (NSString *word in words) {
            for (NSString *name in names) {
                if ([word caseInsensitiveCompare:name] == NSOrderedSame)
                    NSLog(@"%@", word);
            }
        }
        
    }
    return 0;
}

