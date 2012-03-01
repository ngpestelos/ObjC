//
//  Asset.h
//  BMITime
//
//  Created by Nestor Pestelos on 3/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject {
    
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
    
}

@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;

@end
