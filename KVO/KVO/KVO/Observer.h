//
//  Observer.h
//  KVO
//
//  Created by Belén Molina del Campo on 15/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Settings.h"

@interface Observer : NSObject

@property (strong, nonatomic) Settings *mySettings;

-(id)initWithSettings: (Settings *)inSettings;

@end
