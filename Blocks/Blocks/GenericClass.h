//
//  Generic Class.h
//  Blocks
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GenericClass : NSObject
- (void)methodThatTakesABlockAsAParameter:(void (^) (void)) blockToProcess;
- (void)methodThatTakesABlockAsAParameterSuppliesData:(void (^)(NSString *param)) blockToProcess;

@end
