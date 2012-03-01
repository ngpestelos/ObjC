//
//  Person.m
//  BMITime
//
//  Created by Nestor Pestelos on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize weightInKilos;
@synthesize heightInMeters;

- (float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
