//
//  Head.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Head.h"

@implementation Head

- (id)init
{
    self = [super init];
    NSLog(@"I'VE GOT A HEAD");
    self.eyes = [[Eye alloc] init];
    self.nose = [[Nose alloc] init];
    self.ears = [[Ear alloc] init];
    self.mouth = [[Mouth alloc] init];
    
    return self;
}
@end
