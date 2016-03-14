//
//  TableDelegate.h
//  Table Protocol
//
//  Created by Belén Molina del Campo on 14/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TableDelegate <NSObject>

@required

-(NSInteger)numberOfRows;
-(NSInteger)numberOfSections;
-(NSString *)titleForCell: (int)rowNumber;

@end
