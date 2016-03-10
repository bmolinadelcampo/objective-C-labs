//
//  main.m
//  La Soledad de los Números Primos
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isAPrime (int numberToCheck) {
    int i;
    BOOL isPrime;
    isPrime = YES;
    for (i = 2; i < numberToCheck; i++) {
        if (numberToCheck % i == 0) {
            isPrime = NO;
        }
    }
    return isPrime;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int primesToCalculate = 800;
        int myPrimes[primesToCalculate];
        int numberToTest = 3;
        int counter;
        int primesFound = 0;
        
        while (primesFound < primesToCalculate) {
            if (isAPrime(numberToTest)) {
                myPrimes[primesFound] = numberToTest;
                primesFound++;
            }
            numberToTest = numberToTest + 2;
        }
        
        int greatestGap = 1;
        
        for (counter = 1; counter < primesToCalculate; counter++) {
            NSLog(@"Prime %d is %d\n", counter+1, myPrimes[counter]);
            int gap = myPrimes[counter] - myPrimes[counter-1];
            if (gap > greatestGap) {
                greatestGap = gap;
            }
        }
        
        NSLog(@"The greatest prime gap is %d\n", greatestGap);
    }
    return 0;
}
