//
//  main.m
//  GCD Example4
//
//  Created by Belén Molina del Campo on 21/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fibonacci.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fibonacci *myFibonacciObject = [[Fibonacci alloc] init];
        NSOperationQueue *myQueue = [[NSOperationQueue alloc] init];
        
        NSOperation *op = [[NSInvocationOperation alloc]
                           initWithTarget:myFibonacciObject
                           selector:@selector(calculateFibonacci:)
                           object:@10];
    
        [myQueue addOperation:op];
        [myQueue waitUntilAllOperationsAreFinished];
    }
    return 0;
}
