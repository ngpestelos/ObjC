//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Nestor Pestelos on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

- (id)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

// The designated initializer
- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n
{
    // Call the superclass's initializer
    self = [super initWithProductName:pn];
    
    if (self) {
        // Make a set to hold owner names
        ownerNames = [[NSMutableSet alloc] init];
        
        // Is the first owner name non-nil?
        if (n) {
            [ownerNames addObject:n];
        }
    }
    
    // Return a pointer to the new object
    return self;
}

- (void)addOwnerNamesObject:(NSString *)n
{
    [ownerNames addObject:n];
}

- (void)removeOwnerNamesObject:(NSString *)n
{
    [ownerNames removeObject:n];
}

@end
