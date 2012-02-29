//
//  StockHolding.m
//  Stocks
//
//  Created by Nestor Pestelos on 2/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice;
@synthesize currentSharePrice;
@synthesize numberOfShares;

-(float)costInDollars {
    return purchaseSharePrice * numberOfShares;
}

-(float)valueInDollars {
    return currentSharePrice * numberOfShares;
}

@end
