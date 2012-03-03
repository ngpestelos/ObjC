//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Nestor Pestelos on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

@interface OwnedAppliance : Appliance {
    NSMutableSet *ownerNames;
}

- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n;

- (void)addOwnerNamesObject:(NSString *)n;

- (void)removeOwnerNamesObject:(NSString *)n;

@end
