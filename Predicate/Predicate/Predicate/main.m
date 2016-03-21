//
//  main.m
//  Predicate
//
//  Created by Belén Molina del Campo on 21/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Scores.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Scores *student1 = [[Scores alloc] init];
        [student1 setName:@"Peter"];
        [student1 setExamScore:@30];
        
        NSPredicate *myPredicate = [NSPredicate predicateWithFormat:@"examScore > 20"];
        
        BOOL conditionMet = [myPredicate evaluateWithObject:student1];
        if (conditionMet) {
            NSLog(@"Exam score is over 20");
        }
        
        myPredicate = [NSPredicate predicateWithFormat:@"name == 'Peter'"];
        conditionMet = [myPredicate evaluateWithObject:student1];
        if (conditionMet) {
            NSLog(@"Student name is Peter");
        }
        
        Scores *student2 = [[Scores alloc] init];
        [student2 setExamScore:@10];
        [student2 setName:@"Richard"];
        Scores *student3 = [[Scores alloc] init];
        [student3 setExamScore:@20];
        [student3 setName:@"David"];
        Scores *student4 = [[Scores alloc] init];
        [student4 setExamScore:@50];
        [student4 setName:@"Ross"];
        Scores *student5 = [[Scores alloc] init];
        [student5 setExamScore:@60];
        [student5 setName:@"Rick"];
        
        NSArray *allStudents = @[student1, student2, student3, student4, student5];
        myPredicate = [NSPredicate predicateWithFormat:@"examScore > 30"];
        NSArray *studentsThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records where filtered", [studentsThatMatched count]);
        
        myPredicate = [NSPredicate predicateWithFormat:@"examScore BETWEEN {20,60}"];
        studentsThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records where filtered on exam score", [studentsThatMatched count]);
        
        myPredicate = [NSPredicate predicateWithFormat:@"examScore < 40 && name == 'Peter'"];
        studentsThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records have scored less than 40 and name is Peter", [studentsThatMatched count]);
        
        myPredicate = [NSPredicate predicateWithFormat:@"name BEGINSWITH 'R'"];
        studentsThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records have a name that starts with R", [studentsThatMatched count]);
        
        myPredicate = [NSPredicate predicateWithFormat:@"name LIKE '?ic*'"];
        studentsThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records have ic as the second and third character", [studentsThatMatched count]);
        
        myPredicate = [NSPredicate predicateWithFormat:@"examScore > %@ || name ENDSWITH %@", @30, @"d"];
        studentsThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records where filtered", [studentsThatMatched count]);
    }
    return 0;
}
