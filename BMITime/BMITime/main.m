//
//  main.m
//  BMITime
//
//  Created by Nestor Pestelos on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an instance of Person
        Employee *person = [[Employee alloc] init];
        
        // Give the instance variables interesting values
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        // Call the BMI method
        float bmi = [person bodyMassIndex];
        //NSLog(@"Person has a BMI of %f", bmi);
        //NSLog(@"Person (%d %f) has a BMI of %f", 
        //      [person weightInKilos], [person heightInMeters], bmi);
        
        NSLog(@"Employee %d has a BMI of %f", [person employeeID], bmi);
        
    }
    return 0;
}

