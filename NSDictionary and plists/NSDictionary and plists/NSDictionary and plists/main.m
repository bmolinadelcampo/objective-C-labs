//
//  main.m
//  NSDictionary and plists
//
//  Created by Belén Molina del Campo on 16/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *myPrefs = [NSMutableDictionary dictionary];
        [myPrefs setObject:@"Richard" forKey:@"name"];
        [myPrefs setObject:[NSNumber numberWithInt:37] forKey:@"age"];
        
        if ([myPrefs writeToFile:@"/Users/Shared/oldPrefs.plist" atomically:YES] == NO) {
            NSLog(@"Save failed");
        } else {
            NSLog(@"Save successful");
        }
        
        NSMutableDictionary *myNewPrefs = [NSMutableDictionary dictionaryWithContentsOfFile:@"/Users/Shared/prefs.plist"];
        NSLog(@"Job is %@", [myNewPrefs objectForKey:@"job"]);
    }
    return 0;
}
