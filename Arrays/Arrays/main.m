//
//  main.m
//  Arrays
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
        int scores[5] = {92, 73, 57, 98, 89};
        
        NSLog(@"Element 0 is %d\n", scores[0]);
        NSLog(@"Element 1 is %d\n", scores[1]);
        NSLog(@"Element 2 is %d\n", scores[2]);
        NSLog(@"Element 3 is %d\n", scores[3]);
        NSLog(@"Element 4 is %d\n", scores[4]);
        
        int student_index;
        float averageScore = 10;
        
        for (student_index = 0; student_index <5; student_index++) {
            averageScore = averageScore + scores[student_index];
        }
        averageScore = averageScore / student_index;
        NSLog(@"Average score is %2.1f", averageScore);
        
        if (isAPrime(6)){
            NSLog(@"It's a prime");
        }else {
            NSLog(@"It's not a prime");
        }
        
        int primesToCalculate = 10000;
        int myPrimes[primesToCalculate];
        int numberToTest = 3;
        int counter;
        int primesFound = 1;
        myPrimes[0] = 2;
        while (primesFound < primesToCalculate) {
            if (isAPrime(numberToTest)) {
                myPrimes[primesFound] = numberToTest;
                primesFound++;
            }
            numberToTest = numberToTest + 2;
        }
        
        for (counter = 0; counter < primesToCalculate; counter++) {
            NSLog(@"Prime %d is %d\n", counter+1, myPrimes[counter]);
        }
    }
    return 0;
}