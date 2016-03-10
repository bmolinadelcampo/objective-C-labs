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