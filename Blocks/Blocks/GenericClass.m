//
//  Generic Class.m
//  Blocks
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "GenericClass.h"

@implementation GenericClass
- (void)methodThatTakesABlockAsAParameter:(void (^) (void)) blockToProcess
{
    blockToProcess();
}

- (void)methodThatTakesABlockAsAParameterSuppliesData:(void (^)(NSString *param)) blockToProcess
{
    blockToProcess(@"Text Passed as a Param");
}


@end
