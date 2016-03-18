//
//  main.m
//  Blocks2
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        __block int i = 0;

        while (i < 3) {
                void (^testBlock) (void) = ^{
                NSLog(@"The local variable i is %d", i);
                i++;
            };
            testBlock();
        }
        
        NSArray *myArray = @[@"One", @"Two", @"Three", @"Four"];
        [myArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"Current array element is %lu, Current array object is %@", idx, obj);
        }];
    }
    return 0;
}
