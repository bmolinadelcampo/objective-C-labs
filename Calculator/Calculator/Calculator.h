//
//  Calculator.h
//  Calculator
//
//  Created by Belén Molina del Campo on 10/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
{
    double accumulator;
}

- (void) setAccumulator: (double)value;
- (void) clear;
- (double)accumulator;

- (void) add: (double)value;
- (void) substract: (double)value;
- (void) multiply: (double)value;
- (void) divide: (double)value;
    
@end