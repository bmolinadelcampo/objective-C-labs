//
//  main.m
//  Calculator
//
//  Created by Belén Molina del Campo on 10/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Scientific.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Scientific *myCalculator = nil;
        myCalculator = [[Scientific alloc] init];
        
        [myCalculator clear];
        [myCalculator setAccumulator:100];
        [myCalculator add: 200];
        [myCalculator divide:15];
        [myCalculator substract:10];
        [myCalculator multiply:5];
        [myCalculator square];
        
        NSLog(@"The result is %.2f\n", myCalculator.accumulator);
        
        
    }
    return 0;
}
