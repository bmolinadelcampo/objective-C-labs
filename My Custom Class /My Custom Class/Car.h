//
//  Car.h
//  My Custom Class
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>


// Add interface

@interface Car : NSObject
{
    NSString *make;
    int age;
    BOOL engineOn;
}

// Declare methods
- (NSString *)make;
- (void) setMake: (NSString *)value;

- (int)age;
- (void) setAge: (int)value;

- (BOOL)engineOn;
- (void) setEngineOn: (BOOL)value;

- (BOOL)isServiceRequired;
- (void) driveCar;

@end
