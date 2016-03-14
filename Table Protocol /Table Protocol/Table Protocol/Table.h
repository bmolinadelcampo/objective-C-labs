//
//  Table.h
//  Table Protocol
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableDelegate.h"

@interface Table : NSObject

@property (weak, nonatomic) id <TableDelegate> delegate;

-(void)howManyRowsDoIRequire;
-(void)howMAnySectionsDoIRequire;
-(void)whatIsTheTitleForTheCell: (int)rowNumber;

@end
