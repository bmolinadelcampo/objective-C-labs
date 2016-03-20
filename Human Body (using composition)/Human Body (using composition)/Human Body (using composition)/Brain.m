//
//  Brain.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 19/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Brain.h"

@implementation Brain

- (id)init
{
    self = [super init];
    NSLog(@"I've got a brain");
    
    return self;
}

-(void)commandToSayHello
{
    NSLog(@"My brain is commanding to say hello");
    [self.delegate sayHello];
}


@end
