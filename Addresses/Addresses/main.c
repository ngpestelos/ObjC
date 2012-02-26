//
//  main.c
//  Addresses
//
//  Created by Nestor Pestelos on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{

    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    printf("this function starts at %p\n", main);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    
    float f = 0;
    printf("A float is %zu bytes\n", sizeof(f));
    
    short x = 0;
    printf("A short is %zu bytes\n", sizeof(x)); // 65536
    
    double d = 0;
    printf("A double is %zu bytes\n", sizeof(d));
    
    return 0;
}