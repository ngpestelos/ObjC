//
//  StockHolding.h
//  Stocks
//
//  Created by Nestor Pestelos on 2/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject {
    
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
    
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

-(float)costInDollars;
-(float)valueInDollars;

@end
