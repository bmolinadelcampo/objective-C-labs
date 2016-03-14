//
//  AppleBox.m
//  Apples Protocol
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "AppleBox.h"

@implementation AppleBox

-(void) appleBeingBought
{
    _numberOfApples--;
    NSLog(@"Buying an Apple. %d apples left in the box", _numberOfApples);
    if (_numberOfApples == 0) {
        [self.delegate appleBoxIsEmpty];
    }
}

@end
