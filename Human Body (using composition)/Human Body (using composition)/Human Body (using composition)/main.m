//
//  main.m
//  Human Body (using composition)
//
//  Created by Belén Molina del Campo on 18/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Human *person = [[Human alloc] init];
        
        [person.arms.hands grabThisThing:@"ball"];
        [person.head.eyes lookAtMe];
        [person.legs.feet kickTheBall];
    }
    
    return 0;
}
