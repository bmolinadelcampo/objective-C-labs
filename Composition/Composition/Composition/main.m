//
//  main.m
//  Composition
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *myCar = [[Car alloc] init];
        myCar.manufacturer = @"Ford";
        myCar.colour = @"red";
        myCar.model = @"Escort";
        
        myCar.carEngine.fuel = @"Petrol";
        myCar.carEngine.cc = @2000;
        myCar.carEngine.cylinders = @8;
        myCar.carEngine.turbo = YES;
        
        myCar.carTyres.manufacturer = @"Dunlop";
        myCar.carTyres.rimSize = @"R9";
        myCar.carTyres.width = @200;
        
        NSLog(@"Car colour is %@", [myCar colour]);
        NSLog(@"Tyre manufacturer is %@", myCar.carTyres.manufacturer);
        NSLog(@"Total cyclinder in engine is %@", myCar.carEngine.cylinders);
        
        
    }
    
    return 0;
}