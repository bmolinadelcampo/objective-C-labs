//
//  main.m
//  Function Pointers
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

void swap (int *pointer1, int *pointer2){
    int temp;
    temp = *pointer1;
    *pointer1 = *pointer2;
    *pointer2 = temp;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number1 = 5;
        int number2 = 10;
        
        int *pointer1 = &number1;
        int *pointer2 = &number2;
        
        swap(pointer1, pointer2);
        
        NSLog(@"Number 1 now is %d\n", number1);
        NSLog(@"Number 2 now is %d\n", number2);
    }
    return 0;
}
