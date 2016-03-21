//
//  Fibonacci.m
//  GCD Example4
//
//  Created by Belén Molina del Campo on 21/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Fibonacci.h"

@implementation Fibonacci

- (void) calculateFibonacci: (NSNumber *)total
{
    int fcounter = [total intValue];
    int f1 = 1;
    int f2 = 0;
    int fn;
    
    for (int i = 1; i <= fcounter; i++) {
        fn = f1 + f2;
        f1 = f2;
        f2 = fn;
        
        NSLog(@"%d: ", fn);
    }
}
@end
