//
//  Table.m
//  Table Protocol
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Table.h"

@implementation Table

-(void)howManyRowsDoIRequire
{
    NSLog(@"I need %lu rows", [self.delegate numberOfRows]);
}

-(void)howMAnySectionsDoIRequire
{
    NSLog(@"I need %lu sections", [self.delegate numberOfSections]);
}

-(void)whatIsTheTitleForTheCell:(int)rowNumber
{
    NSLog(@"The title for the row is %@", [self.delegate titleForCell:rowNumber]);
}

@end
