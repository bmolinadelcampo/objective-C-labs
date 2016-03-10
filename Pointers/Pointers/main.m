//
//  main.m
//  Pointers
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        int myInteger = 2;
//        int *myPointer = &myInteger;
//        
//        *myPointer = 3;
//        
//        NSLog(@"myInteger has a value of %d\n", myInteger);
//        NSLog(@"myPointer points to a value of %d\n", *myPointer);
    
        int myArray[4] = {10, 20, 30, 40};
        int *myPointer = &myArray[0];
        
        NSLog(@"Element 0 of array is %d.\n", myArray[0]);
        NSLog(@"Element 0 via pointer is %d\n", *myPointer);
        
    }
    return 0;
}
