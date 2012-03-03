//
//  Appliance.m
//  Appliances
//
//  Created by Nestor Pestelos on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName;
@synthesize voltage;

- (id)init
{
    return [self initWithProductName:@"Unknown"];
}

- (id)initWithProductName:(NSString *)pn
{
    // Call NSObject's init method
    self = [super init];
    
    // Did it return something non-nil?
    if (self) {
        // Set the product name
        [self setProductName:pn];
        
        // Give voltage a starting value
        [self setVoltage:120];
    }
    
    // Return a pointer to the new object
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
}

@end
