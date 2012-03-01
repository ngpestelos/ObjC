//
//  Person.h
//  BMITime
//
//  Created by Nestor Pestelos on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    // It has two instance variables
    float heightInMeters;
    int weightInKilos;
}

// You will be able to set those instance variables using these methods
@property float heightInMeters;
@property int weightInKilos;

// This method calculates the Body Mass Index
- (float)bodyMassIndex;

@end
