//
//  Mouth.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Mouth.h"

@implementation Mouth

- (id)init
{
    self = [super init];
    NSLog(@"I've got a mouth");
    self.teeth = [[Teeth alloc] init];
    
    return self;
}

@end
