//
//  SortArray.h
//  Sort Array
//
//  Created by Belén Molina del Campo on 10/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SortArray : NSObject

@property NSString *test;

- (void) sort: (NSMutableArray *) unsortedArray;

- (void) bubbleSort: (NSMutableArray *) unsortedArray;

- (BOOL) compareResultArray: (NSMutableArray *) arrayToCheck
          withOriginalArray: (NSMutableArray *) originalArray;

+ (void) sorted: (NSMutableArray *) unsortedArray;

@end
