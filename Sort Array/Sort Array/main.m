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
        NSNumber *a, *b, *c;
        
        a = @4;
        b = @(-1);
        c = @17;
        
        NSMutableArray *array = [NSMutableArray arrayWithObjects: a, b, c, nil];
        
        //Using instance method
        
        SortArray *sorter = [SortArray new];
        
        [sorter sort: array];
        
        // Using class method
        
        [SortArray sorted: array];
        
        // Using a category
        
        [array sort];
        
    }
    return 0;
}