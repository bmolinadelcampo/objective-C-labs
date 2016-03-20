//
//  Head.h
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "BodyPart.h"
#import "Eye.h"
#import "Nose.h"
#import "Mouth.h"
#import "Ear.h"
#import "Brain.h"

@interface Head : BodyPart

@property (strong, nonatomic) Brain *brain;
@property (strong, nonatomic) Eye *eyes;
@property (strong, nonatomic) Nose *nose;
@property (strong, nonatomic) Mouth *mouth;
@property (strong, nonatomic) Ear *ears;

@end
