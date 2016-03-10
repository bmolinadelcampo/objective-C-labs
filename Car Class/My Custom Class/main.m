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
        
        myCar.age = 3;
        myCar.make = @"Jaguar";
        NSLog(@"My car is a %@ and it is %d years old\n", myCar.make, myCar.age);
        
        Car *my2ndCar = nil;
        my2ndCar = [[Car alloc] init];
        NSLog(@"My second car is a %@ and it is %d years old\n", my2ndCar.make, my2ndCar.age);
        
        
        Car *my3rdCar = nil;
        
        my3rdCar = [[Car alloc] initWithMake:@"Aston Martin" age:4];
        NSLog(@"My third car is a %@ and it is %d years old\n", my3rdCar.make, my3rdCar.age);
        
        id genericObject;
        genericObject = myCar;
        [genericObject setMake:@"Lotus"];
        [genericObject setAge:3];
        NSLog(@"I am genericObject. My make is %@ and my age is %d.\n", [genericObject make], [genericObject age]);
        
    }
    
    
    return 0;
}
