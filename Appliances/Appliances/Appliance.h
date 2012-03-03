//
//  Appliance.h
//  Appliances
//
//  Created by Nestor Pestelos on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject {
    //NSString *productName;
    //int voltage;
}

@property (copy, nonatomic) NSString *productName;
@property (nonatomic) int voltage;

- (id)initWithProductName:(NSString *)pn;

@end
