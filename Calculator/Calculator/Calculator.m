//
//  Calculator.m
//  Calculator
//
//  Created by Belén Molina del Campo on 10/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (void) setAccumulator:(double)value{
    accumulator = value;
}

- (void) clear{
    accumulator = 0;
}

- (double) accumulator{
    return accumulator;
}

- (void) add: (double)value{
    accumulator += value;
}

- (void) substract:(double)value{
    accumulator -= value;
}

- (void) multiply:(double)value{
    accumulator *= value;
}

- (void) divide:(double)value{
    accumulator /= value;
}
@end
