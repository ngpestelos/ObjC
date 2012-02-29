//
//  Person.m
//  BMITime
//
//  Created by Nestor Pestelos on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setHeightInMeters:(float)h
{
    heightInMeters = h;
}

- (void)setWeightInKilos:(int)w
{
    weightInKilos = w;
}

- (float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
