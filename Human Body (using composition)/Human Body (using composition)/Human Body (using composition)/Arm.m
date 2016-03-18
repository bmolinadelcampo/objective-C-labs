//
//  Arm.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Arm.h"

@implementation Arm

- (id)init
{
    self = [super init];
    NSLog(@"I'VE GOT TWO ARMS");
    
    self.hands = [[Hand alloc] init];
    
    return self;
}

@end
