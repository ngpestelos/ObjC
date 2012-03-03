//
//  main.m
//  gradeInTheShade
//
//  Created by Nestor Pestelos on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdlib.h> // malloc, free

float averageFloats(float *data, int dataCount)
{
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    
    return sum / dataCount;
}

int main (int argc, const char * argv[])
{
    // Create an array of floats
    float gradebook[] = {60.2, 94.5, 81.1};
    
    // Calculate the average
    float average = averageFloats(gradebook, 3);
    
    printf("Average = %.2f\n", average);
    
    return 0;
}

