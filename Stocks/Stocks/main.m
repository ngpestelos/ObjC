//
//  main.m
//  Stocks
//
//  Created by Nestor Pestelos on 2/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
       
        StockHolding *one = [[StockHolding alloc] init];
        [one setPurchaseSharePrice:2.30];
        [one setCurrentSharePrice:4.50];
        [one setNumberOfShares:40];
        
        StockHolding *two = [[StockHolding alloc] init];
        [two setPurchaseSharePrice:12.19];
        [two setCurrentSharePrice:10.56];
        [two setNumberOfShares:90];
        
        StockHolding *three = [[StockHolding alloc] init];
        [three setPurchaseSharePrice:45.10];
        [three setCurrentSharePrice:49.51];
        [three setNumberOfShares:210];
        
        NSMutableArray *stocks = [NSMutableArray arrayWithObjects:one, two, three, nil];
        
        NSLog(@"%@", stocks);
        
    }
    return 0;
}

