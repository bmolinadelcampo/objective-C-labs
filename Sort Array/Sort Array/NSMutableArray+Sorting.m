//
//  NSMutableArray+Sorting.m
//  Sort Array
//
//  Created by Belén Molina del Campo on 10/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "NSMutableArray+Sorting.h"

@implementation NSMutableArray (Sorting)

- (void) sort {
    
    NSUInteger index;
    NSUInteger index2;
    
    for (index = 0; index < [self count] ; index++) {
        for (index2 = index + 1; index2 < [self count] ; index2++) {
            if (((NSNumber *) self[index2]).integerValue < ((NSNumber *)self[index]).integerValue){
                id temporaryObject = self[index];
                [self replaceObjectAtIndex:index withObject:self[index2]];
                [self replaceObjectAtIndex:index2 withObject:temporaryObject];
            }
        }
    }
}

@end
