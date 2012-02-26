//
//  main.c
//  ClassCertificates
//
//  Created by Nestor Pestelos on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void congratulateStudent(char *student, char *course, int numDays) {
    printf("%s has done as much %s Programming as I could fit into %d days.\n", student, course, numDays);
}

int main (int argc, const char * argv[])
{

    //printf("Mark has done as much Cocoa Programming as I could fit into 5 days\n");
    
    //printf("Bo has done as much Objective-C Programming as I could fit into 2 days\n");
    
    //printf("Ted has done as much iOS Programming as I could fit into 5 days\n");
    
    congratulateStudent("Mark", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congratulateStudent("Ted", "iOS", 5);
    sleep(2);
    
    return 0;
}

