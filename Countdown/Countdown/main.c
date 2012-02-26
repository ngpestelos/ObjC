//
//  main.c
//  Countdown
//
//  Created by Nestor Pestelos on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{

    int i = 0;
    for (i = 99; i >= 0; i = i - 3) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }
    
    return 0;
}

