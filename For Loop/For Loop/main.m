//
//  main.m
//  For Loop
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"The humbers from 1 to 100: ");
        
        int counter;
        for (counter = 1; counter <= 100; counter++) {
            NSLog(@"Counter's value is %d\n", counter);
        }
        
        NSLog(@"The humbers from 100 to 1: ");
        
        for (counter = 100; counter >= 1; counter--) {
            NSLog(@"Counter's value is %d\n", counter);
        }
    }
    return 0;
}

