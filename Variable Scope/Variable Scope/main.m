//
//  main.m
//  Variable Scope
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

void myFunction (int someValue) {
    NSLog(@"The value passed in was %d", someValue);
    someValue++;
    NSLog(@"The new value is %d", someValue);
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int myInteger = 10;
        
        for (int i = 0; i <3; i++) {
            int foo = 55;
            myInteger++;
            myFunction(foo);
            NSLog(@"The value of foo is %i", foo);
        }
        
        NSLog(@"The value of x is %i", myInteger);
    }
    return 0;
}
