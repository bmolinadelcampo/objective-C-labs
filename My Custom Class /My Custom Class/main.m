//
//  main.m
//  My Custom Class
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create a car instance
        
        // Allocate and initialise
        
        Car *myCar = nil;
        myCar = [[Car alloc] init];
        
        // 
        [myCar setAge:1];
        [myCar setMake:@"Aston Martin"];
        
        if ([myCar isServiceRequired]) {
            NSLog(@"The car needs a service");
        }else{
            NSLog(@"The car does not require a service");
        }
        
        
    }
    return 0;
}
