//
//  Human.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Human.h"

@implementation Human

- (id) init
{
    self = super.init;
    NSLog(@"I am a human");
    if (self) {
        self.head = [[Head alloc] init];
        self.trunk = [[Trunk alloc] init];
        self.arms = [[Arm alloc] init];
        self.legs = [[Leg alloc] init];
    }
    
    return self;
}

@end
