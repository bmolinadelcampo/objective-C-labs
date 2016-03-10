//
//  main.m
//  Switch
//
//  Created by Belén Molina del Campo on 09/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int leaguePosition = 3;
        
        switch (leaguePosition) {
            case 1:
                NSLog(@"Champions!");
                break;
                
            case 2:
                NSLog(@"Runners up");
                break;
                
            case 3:
                NSLog(@"Third Place");
                break;
                
            default:
                NSLog(@"Who cares");
                break;
        }
    }
    return 0;
}
