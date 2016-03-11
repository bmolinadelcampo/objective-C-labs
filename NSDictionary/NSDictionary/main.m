//
//  main.m
//  NSDictionary
//
//  Created by Belén Molina del Campo on 11/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *myColours = @{@"Colour1":@"Red", @"Colour2":@"Green", @"Colour3": @"Blue"};
        
        NSLog(@"Selected colour is %@", [myColours objectForKey:@"Colour2"]);
        
        NSArray *myShapes = @[@"Circle", @"Triangle", @"Square", @"Hexagon"];
        NSNumber *myAge = [NSNumber numberWithInt:30];
        
        NSDictionary *allSorts = @{@"Colours": myColours, @"Shapes": myShapes, @"Age": myAge};
        
        NSLog(@"The object for the key colour is %@", [allSorts objectForKey:@"Colours"]);
        NSLog(@"These are all the objects %@", [allSorts allKeys]);
        
        NSMutableDictionary *foods = [NSMutableDictionary dictionary];
        
        [foods setObject:@"banana" forKey:@"fruit"];
        [foods setObject:@"onion" forKey:@"vegetable"];
        [foods setObject:@"turkey" forKey:@"meat"];
        
        [foods removeObjectForKey:@"vegetable"];
    }
    return 0;
}
