//
//  main.m
//  String Comparison
//
//  Created by Belén Molina del Campo on 10/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string1 = @"ABCD";
        NSString *string2 = @"ABCD";
        NSMutableString *string3 = [NSMutableString stringWithString:@"ABCD"];
        
        if (string1 == string2) {
            NSLog(@"Using == string1 is the same as string2");
        }else{
            NSLog(@"Using == string1 is different from string2");
        }
        
        if (string1 == string3) {
            NSLog(@"Using == string1 is the same as string3");
        }else{
            NSLog(@"Using == string1 is different from string3");
        }
        
        if ([string1 isEqualToString: string3]) {
            NSLog(@"Using isEqualToString string1 is the same as string3");
        }else{
            NSLog(@"Using isEqualToString string1 is different from string3");
        }
    }
    
    return 0;
}
