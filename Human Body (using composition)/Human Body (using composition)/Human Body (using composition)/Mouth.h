//
//  Mouth.h
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "BodyPart.h"
#import "Teeth.h"

@interface Mouth : BodyPart

@property (strong, nonatomic) Teeth *teeth;

@end
