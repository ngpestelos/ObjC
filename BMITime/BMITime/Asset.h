//
//  Asset.h
//  BMITime
//
//  Created by Nestor Pestelos on 3/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject {
    
    NSString *label;
    unsigned int resaleValue;
    
}

@property (strong) NSString *label;
@property unsigned int resaleValue;

@end
