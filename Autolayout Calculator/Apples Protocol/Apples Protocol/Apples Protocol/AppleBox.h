//
//  AppleBox.h
//  Apples Protocol
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "AppleDelegate.h"

@interface AppleBox : NSObject

@property (weak, nonatomic) id <AppleDelegate> delegate;
@property int numberOfApples;

-(void) appleBeingBought;

@end
