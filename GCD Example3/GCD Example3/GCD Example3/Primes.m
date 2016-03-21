//
//  Primes.m
//  GCD Example3
//
//  Created by Belén Molina del Campo on 21/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Primes.h"

@implementation Primes

- (void) calculatePrimes
{
    int p, d;
    BOOL isPrime;
    
    for (p = 2; p <= 25000; ++p) {
        isPrime = YES;
        for (d = 2; d < p; ++d) {
            if (p % d == 0)
                isPrime = NO;
        }
        if (isPrime) {
            NSLog(@"%i", p);
        }
    }
}

- (void)main
{
    [self calculatePrimes];
}
@end
