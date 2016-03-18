//
//  Eyes.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Eye.h"

@implementation Eye

- (id)init
{
    self = [super init];
    NSLog(@"I've got two eyes");
    
    return self;
}

- (void) lookAtMe
{
    NSLog(@"My eyes are looking at you");
}


@end
