//
//  SortArray.m
//  Sort Array
//
//  Created by Belén Molina del Campo on 10/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "SortArray.h"

@implementation SortArray

- (void)sort: (NSMutableArray *)unsortedArray{
    
    NSUInteger index;
    NSUInteger index2;
    
    for (index = 0; index < [unsortedArray count] ; index++) {
        for (index2 = index + 1; index2 < [unsortedArray count] ; index2++) {
            if (((NSNumber *) unsortedArray[index2]).integerValue < ((NSNumber *)unsortedArray[index]).integerValue){
                id temporaryObject = unsortedArray[index];
                [unsortedArray replaceObjectAtIndex:index withObject:unsortedArray[index2]];
                [unsortedArray replaceObjectAtIndex:index2 withObject:temporaryObject];
            }
        }
    }
}

- (void) bubbleSort: (NSMutableArray *) unsortedArray
{
    NSUInteger index;
    NSMutableArray *unsortedArrayCopy = [unsortedArray mutableCopy];

    for (index = 0; index < [unsortedArray count] - 1; index++) {
        if (((NSNumber *) unsortedArray[index + 1]).integerValue < ((NSNumber *)unsortedArray[index]).integerValue){
            id temporaryObject = unsortedArray[index];
            [unsortedArray replaceObjectAtIndex:index withObject:unsortedArray[index + 1]];
            [unsortedArray replaceObjectAtIndex:index + 1 withObject:temporaryObject];
        }
    }

    if ([self compareResultArray:unsortedArray withOriginalArray:unsortedArrayCopy]) {
        return;
    }
    else ([self bubbleSort:unsortedArray]);
}

- (BOOL) compareResultArray: (NSMutableArray *) arrayToCheck
          withOriginalArray: (NSMutableArray *) originalArray
{
    BOOL isSorted = NO;
    if ([arrayToCheck isEqualToArray:originalArray]) {
        isSorted = YES;
    }
    return isSorted;
}


+ (void)sorted: (NSMutableArray *)unsortedArray{
    
    NSUInteger index;
    NSUInteger index2;
    
    for (index = 0; index < [unsortedArray count] ; index++) {
        for (index2 = index + 1; index2 < [unsortedArray count] ; index2++) {
            if (((NSNumber *) unsortedArray[index2]).integerValue < ((NSNumber *)unsortedArray[index]).integerValue){
                id temporaryObject = unsortedArray[index];
                [unsortedArray replaceObjectAtIndex:index withObject:unsortedArray[index2]];
                [unsortedArray replaceObjectAtIndex:index2 withObject:temporaryObject];
            }
        }
    }
}
@end