//
//  main.m
//  Sort Array
//
//  Created by Belén Molina del Campo on 10/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SortArray.h"
#import "NSMutableArray+Sorting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *a, *b, *c, *d;
        
        a = @17;
        b = @4;
        c = @(-1);
        d = @0;
        
        NSMutableArray *array = [NSMutableArray arrayWithObjects: a, b, c, d, nil];
        SortArray *sorter = [SortArray new];
        
        
        // Bubble sort
        
        [sorter bubbleSort:array];
        NSLog(@"Sorted array is %@", array);
        
        //Using instance method
        
        [sorter sort: array];
        
        // Using class method
        
        [SortArray sorted: array];
        
        // Using a category
        
        [array sort];
        
    }
    return 0;
}