//
//  main.m
//  NSArray
//
//  Created by Belén Molina del Campo on 10/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *monthNames = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December"];
        
        int i;
        for (i = 0 ; i < [monthNames count] ; i++) {
            NSLog(@"Month %d is %@", i+1, monthNames[i]);
        }
        
        for (id myNextObject in monthNames){
            NSLog(@"Next Month is %@", myNextObject);
        }
        
        NSLog(@"March is element %lu", [monthNames indexOfObject:@"March"]);
        
        if ([monthNames indexOfObject:@"Christmas"] == NSNotFound) {
            NSLog(@"Not Found");
        }else{
            NSLog(@"Found");
        }
        
        // NSMutableArray
        
        NSMutableArray *myArray = [NSMutableArray arrayWithCapacity:0];
        [myArray addObject:@"Alpha"];
        [myArray addObject:@"Beta"];
        [myArray addObject:@"Gamma"];
        [myArray addObject:@"Delta"];
        
        for (i = 0; i < [myArray count]; i++) {
            NSLog(@"String %d is %@", i+1, myArray[i]);
        }
        
        [myArray removeObjectAtIndex:1];
        
        for (i = 0; i < [myArray count]; i++) {
            NSLog(@"After removal string %d is %@", i+1, myArray[i]);
        }
        
        [myArray insertObject:@"Epsilon" atIndex:1];
        
        for (i = 0; i < [myArray count]; i++) {
            NSLog(@"After inserting string %d is %@", i+1, myArray[i]);
        }
        
        [myArray replaceObjectAtIndex:0 withObject:@"Zeta"];

        for (i = 0; i < [myArray count]; i++) {
            NSLog(@"After replacing string %d is %@", i+1, myArray[i]);
        }
        
    }
    return 0;
}
