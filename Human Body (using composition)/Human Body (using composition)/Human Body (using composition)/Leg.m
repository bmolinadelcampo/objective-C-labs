//
//  Leg.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Leg.h"

@implementation Leg

- (id)init
{
    self = [super init];
    NSLog(@"I'VE GOT TWO LEGS");
    self.knees = [[Knee alloc] init];
    self.feet = [[Foot alloc] init];
    
    return self;
}

@end
