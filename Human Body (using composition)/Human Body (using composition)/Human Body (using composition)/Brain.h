//
//  Brain.h
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 19/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "BodyPart.h"
#import "bodyPartControlling.h"

@interface Brain : BodyPart

@property (weak, nonatomic) id <bodyPartControlling> delegate;

-(void)commandToSayHello;

@end
