//
//  Human.h
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Head.h"
#import "Trunk.h"
#import "Leg.h"
#import "Arm.h"


@interface Human : NSObject

@property (strong, nonatomic) Head *head;
@property (strong, nonatomic) Trunk *trunk;
@property (strong, nonatomic) Leg *legs;
@property (strong, nonatomic) Arm *arms;
@end
