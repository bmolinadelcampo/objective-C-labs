//
//  Car.m
//  My Custom Class
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Car.h"

// Implement the methods

@implementation Car

//- (int)age{
//    return age;
//}
//
//- (void)setAge: (int)value{
//    age = value;
//}
//
//- (NSString *)make{
//    return make;
//}
//
//- (void)setMake:(NSString *)value{
//    make = value;
//}
//
//- (BOOL)engineOn{
//    return engineOn;
//}
//
//- (void)setEngineOn:(BOOL)value{
//    engineOn = value;
//}

- (BOOL)isServiceRequired {
    return ([self age] > 1);
}

- (void)driveCar{
    if ([self engineOn]) {
        NSLog(@"I'm driving!!\n");
    } else {
        NSLog(@"Please start the engine");
    }
}

- (id)init {
    self = [super init];
    if(self){
        _age = 20;
        _make = @"Mini";
    }
    return self;
}

- (id)initWithMake: (NSString *)initMake age: (int)initAge{
    self = [super init];
    if (self) {
        _make = initMake;
        _age = initAge;
    }
    return self;
}

@end
