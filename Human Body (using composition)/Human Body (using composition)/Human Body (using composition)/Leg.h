//
//  Leg.h
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "BodyPart.h"
#import "Knee.h"
#import "Foot.h"

@interface Leg : BodyPart

@property (strong, nonatomic) Knee *knees;
@property (strong, nonatomic) Foot *feet;

@end
