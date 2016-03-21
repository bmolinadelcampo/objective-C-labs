//
//  main.m
//  GCD Example1
//
//  Created by Belén Molina del Campo on 21/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        dispatch_queue_t myQueue;
        myQueue = dispatch_get_global_queue (DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 1");});
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 2");});
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 3");});
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 4");});
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 5");});
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 6");});
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 7");});
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 8");});
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 9");});
        dispatch_async(myQueue, ^{NSLog(@"Dispatch 10");});
        
        sleep(1);
        NSLog(@"End of App");
        
    }
    return 0;
}
