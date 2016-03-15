//
//  main.m
//  KVC
//
//  Created by Belén Molina del Campo on 15/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *myPerson = [[Person alloc] init];
        [myPerson setName:@"Peter"];
        [myPerson setAge:@30];
        NSLog(@"My name is %@ and my age is %@", [myPerson name], [myPerson age]);
        
        [myPerson setValue:@"Richard" forKey:@"name"];
        [myPerson setValue:@40 forKey:@"age"];
        NSLog(@"My name is %@ and my age is %@", [myPerson name], [myPerson age]);
        
        NSString *key1= @"name";
        NSString *key2 = @"age";
        NSString *name = [myPerson valueForKey:key1];
        NSNumber *age = [myPerson valueForKey:key2];
        NSLog(@"My name is %@ and my age is %@", name, age);
        
        NSDictionary *myResults = [myPerson dictionaryWithValuesForKeys:@[@"name", @"age"]];
        NSLog(@"Result is %@", myResults);
        
        NSDictionary *myDetails = @{@"name" : @"Cheryl", @"age" : @25};
        [myPerson setValuesForKeysWithDictionary:myDetails];
        NSLog(@"My name is %@ and my age is %@", [myPerson name], [myPerson age]);
        
        NSNumber *len = [myPerson valueForKeyPath:@"name.length"];
        NSLog(@"Length of string is %d", [len intValue]);
        
        Person *myPerson2 = [[Person alloc] init];
        Person *myPerson3 = [[Person alloc] init];
        Person *myPerson4 = [[Person alloc] init];
        Person *myPerson5 = [[Person alloc] init];

        [myPerson setAge:@10];
        [myPerson2 setAge:@20];
        [myPerson3 setAge:@30];
        [myPerson4 setAge:@40];
        [myPerson5 setAge:@50];
        
        NSArray *myArray = @[myPerson, myPerson2, myPerson3, myPerson4, myPerson5];
        
        NSNumber *count = [myArray valueForKeyPath:@"@count"];
        NSLog(@"The array has %@ items", count);
        
        NSNumber *largest = [myArray valueForKeyPath:@"@max.age"];
        NSLog(@"The highest age is %@", largest);
        
        NSNumber *average = [myArray valueForKeyPath:@"@avg.age"];
        NSLog(@"The average is %@", average);
        
    }
    return 0;
}
