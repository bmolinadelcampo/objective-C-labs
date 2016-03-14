//
//  Car.h
//  Composition
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tyres.h"
#import "Engine.h"

@interface Car : NSObject

@property (strong, nonatomic) NSString *manufacturer;
@property (strong, nonatomic) NSString *model;
@property (strong, nonatomic) NSString *colour;

@property (strong, nonatomic) Tyres *carTyres;
@property (strong, nonatomic) Engine *carEngine;

@end
