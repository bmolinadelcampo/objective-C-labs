//
//  Hand.h
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "BodyPart.h"
#import "Finger.h"
#import "bodyPartControlling.h"

@interface Hand : BodyPart <bodyPartControlling>

@property (strong, nonatomic) Finger *fingers;

- (void) grabThisThing: (NSString*) thingToGrab;
- (void)sayHello;


@end
