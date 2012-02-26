//
//  main.c
//  TimeSince
//
//  Created by Nestor Pestelos on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main (int argc, const char * argv[])
{
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    // 4 million seconds from now
    long secondsNext = secondsSince1970 + 4000000;
    struct tm next;
    localtime_r(&secondsNext, &next);
    
    printf("4M seconds from now will be %d-%d-%d\n", (next.tm_mon + 1), (next.tm_mday), (1900 + next.tm_year));
    
    return 0;
}

