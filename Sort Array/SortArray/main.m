//
//  main.m
//  SortArray
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

 void sortArray (NSMutableArray *unsortedArray){
    NSUInteger index = 0;
    
    for (NSUInteger index = 0; index < unsortedArray.count; index++){
        for (NSUInteger index2 = 0; index < unsortedArray.count; index++) {
            if (unsortedArray[index2] > unsortedArray[index]){
                NSInteger temporaryVariable = unsortedArray[index];
                unsortedArray[index] = unsortedArray[index2];
                unsortedArray[index2] = temporaryVariable;
            }
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *a = [NSNumber numberWithInt: 44];
        NSNumber *b = [NSNumber numberWithInt: -1];
        NSNumber *c = [NSNumber numberWithInt: 12];
        
        NSMutableArray *array = [NSMutableArray arrayWithObjects:[a, b, c] count:3];
        
        
        
        NSLog(@array);
    }
    return 0;
}