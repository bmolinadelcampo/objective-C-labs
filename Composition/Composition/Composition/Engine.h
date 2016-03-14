//
//  Engine.h
//  Composition
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject

@property (strong, nonatomic) NSString *fuel;
@property (strong, nonatomic) NSNumber *cc;
@property (strong, nonatomic) NSNumber *cylinders;
@property BOOL turbo;

@end
