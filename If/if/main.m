//
//  main.m
//  if
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int bottles = 2;
        BOOL greenBottles = NO;
        
        if (bottles > 0 && greenBottles)
            NSLog(@"We have some bottles and they are green");
        else if (bottles >0)
            NSLog(@"We have some bottles but they are not green");
        else
            NSLog(@"We have no bottles");
    }
    return 0;
}
