//
//  main.m
//  GCD Example5
//
//  Created by Belén Molina del Campo on 21/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSOperationQueue *myQueue = [[NSOperationQueue alloc] init];
        NSBlockOperation *operation = [NSBlockOperation blockOperationWithBlock:^{
            NSError *error;
            NSURL *url = [NSURL URLWithString:@"http://www.amsys.co.uk"];
            NSString *htmlContent = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
            if (!error)
                NSLog(@"Web site %@ successfully downloaded", url);
            else
                NSLog(@"An error occurred for the web site %@", url);
        }];
        
        [operation addExecutionBlock:^{
            NSError *error;
            NSURL *url = [NSURL URLWithString:@"http://www.apple.co.uk"];
            NSString *htmlContent = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
            if (!error)
                NSLog(@"Web site %@ successfully downloaded", url);
            else
                NSLog(@"An error occurred for the web site %@", url);
        }];
        
        [operation setCompletionBlock:^{
            NSLog(@"All blocks havve run");
        }];
        
        [myQueue addOperation:operation];
        [myQueue waitUntilAllOperationsAreFinished];
    }
    return 0;
}
