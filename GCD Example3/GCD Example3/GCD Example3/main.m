//
//  main.m
//  GCD Example3
//
//  Created by Belén Molina del Campo on 21/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Primes.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSOperationQueue *myQueue = [[NSOperationQueue alloc] init];
        Primes *myPrimeObject = [[Primes alloc] init];
        [myQueue setMaxConcurrentOperationCount:5];
        [myQueue addOperation:myPrimeObject];
        [myQueue waitUntilAllOperationsAreFinished];
    }
    return 0;
}
