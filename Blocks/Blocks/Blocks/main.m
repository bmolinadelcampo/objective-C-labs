//
//  main.m
//  Blocks
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenericClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^testBlock)(void) = ^{ NSLog(@"This code is a block");};
        testBlock();
        
        NSString* (^test2Block)(void) = ^{return [NSString stringWithFormat:@"Block run at %@", [NSDate date]];};
        NSLog(@"Result from block was: %@", test2Block());
        
        NSMutableArray* (^test3Block)(void) = ^{
            int p,d;
            BOOL isPrime;
            NSMutableArray *primesFound = [[NSMutableArray alloc] init];
            for (p = 2; p <= 1000; ++p) {
                isPrime = YES;
                for (d = 2; d < p; ++d) {
                    if (p % d == 0)
                        isPrime = NO;
                }
                if (isPrime) {
                    [primesFound addObject:[NSNumber numberWithInt:p]];
                }
            }
            return primesFound;
        };
        NSLog(@"Result from primes block was: %@", test3Block());
        
        NSString* (^test4Block) (NSString*, NSDate*) = ^(NSString *param, NSDate *myDate){
            return [NSString stringWithFormat:@"Hello %@ the date is %@", param, myDate];
        };
        NSLog(@"Result from block 4 was: %@", test4Block(@"Richard", [NSDate date]));
        
        GenericClass *myObject = [[GenericClass alloc] init];
        void(^test5Block)(void) = ^{
            NSLog(@"This code is in a declared block");
        };
        
        [myObject methodThatTakesABlockAsAParameter:test5Block];
        
        void(^test6Block) (NSString *) = ^(NSString *param) {
            NSLog(@"This code is a block with parameter: %@", param);
        };
        
        [myObject methodThatTakesABlockAsAParameterSuppliesData:test6Block];
    }
    return 0;
}
