//
//  main.m
//  GCD Example2
//
//  Created by Belén Molina del Campo on 21/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        dispatch_queue_t myQueue;
        myQueue = dispatch_get_global_queue (DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        
        dispatch_group_t myGroup =dispatch_group_create();
        dispatch_group_async(myGroup, myQueue, ^{
            for (int i = 1; i < 10000; i++) {
                NSLog(@"First loop counter is %d", i);
            }
        });

    
        dispatch_group_async(myGroup, myQueue, ^{
            for (int i = 10000; i > 1; i--) {
                NSLog(@"Second loop counter is %d", i);
            }
        });
        
        dispatch_group_notify(myGroup, myQueue, ^{
            NSLog(@"Completion block has run");
        });
        
        dispatch_group_wait(myGroup, DISPATCH_TIME_FOREVER);
        NSLog(@"Dispatch group has finished executing");
    }
    return 0;
}
