//
//  Foot.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Foot.h"

@implementation Foot

- (id)init
{
    self = [super init];
    NSLog(@"I've got two feet");
    self.toes = [[Toe alloc] init];
    
    return self;
}

- (void) kickTheBall
{
    NSLog(@"I'm kicking the ball with my feet");
}


@end
