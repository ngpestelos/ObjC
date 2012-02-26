//
//  main.c
//  Degrees
//
//  Created by Nestor Pestelos on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Declare a global variable
float lastTemperature;

float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    printf("The last temperature converted was %f\n", lastTemperature);
    return fahr;
}

int main (int argc, const char * argv[])
{

    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit\n", freezeInF);
    
    return EXIT_SUCCESS;
}

