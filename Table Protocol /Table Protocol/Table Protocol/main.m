//
//  main.m
//  Table Protocol
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Table.h"
#import "DataSource.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DataSource *myData = [[DataSource alloc] init];
        Table *myTable = [[Table alloc] init];
        
        myTable.delegate = myData;
        
        [myTable howManyRowsDoIRequire];
        [myTable howMAnySectionsDoIRequire];
        [myTable whatIsTheTitleForTheCell:2];
    }
    return 0;
}
