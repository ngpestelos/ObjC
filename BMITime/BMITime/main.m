//
//  main.m
//  BMITime
//
//  Created by Nestor Pestelos on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an instance of Person
        Person *person = [[Person alloc] init];
        
        // Give the instance variables interesting values
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        
        // Call the BMI method
        float bmi = [person bodyMassIndex];
        NSLog(@"Person has a BMI of %f", bmi);
        
    }
    return 0;
}

