//
//  main.m
//  Apples Protocol
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppleBox.h"
#import "Store.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Store *myStore = [[Store alloc] init];
        AppleBox *myAppleBox = [[AppleBox alloc] init];
        
        myAppleBox.delegate = myStore;
        
        myAppleBox.numberOfApples = 5;
        
        [myAppleBox appleBeingBought];
        [myAppleBox appleBeingBought];
        [myAppleBox appleBeingBought];
        [myAppleBox appleBeingBought];
        [myAppleBox appleBeingBought];
    }
    return 0;
}
