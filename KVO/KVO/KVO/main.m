//
//  main.m
//  KVO
//
//  Created by Belén Molina del Campo on 15/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "Settings.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Settings *mySettings = [[Settings alloc] init];
        Observer *myObserver = [[Observer alloc] initWithSettings:mySettings];
        
        mySettings.volume = @10;
        mySettings.brightness = @55;
        mySettings.volume = @30;
        mySettings.brightness = @90;
    }
    return 0;
}
