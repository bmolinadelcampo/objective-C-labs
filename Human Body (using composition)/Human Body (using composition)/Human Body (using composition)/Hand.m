//
//  Hand.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Hand.h"

@implementation Hand

- (id)init
{
    self = [super init];
    NSLog(@"I've got two hands");
    
    self.fingers = [[Finger alloc] init];
    
    return self;
}

- (void) grabThisThing: (NSString*) thingToGrab
{
    NSLog(@"My hands are grabbing the %@", thingToGrab);
}

-(void)sayHello
{
    NSLog(@"I'm waving my hand");
}


@end
