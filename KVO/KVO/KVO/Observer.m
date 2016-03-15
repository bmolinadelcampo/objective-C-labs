//
//  Observer.m
//  KVO
//
//  Created by Belén Molina del Campo on 15/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "Observer.h"

@implementation Observer

-(id)initWithSettings:(Settings *)inSettings
{
    self = [super init];
    if(self)
    {
        _mySettings = inSettings;
        [_mySettings addObserver:self
                      forKeyPath:@"volume"
                         options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld)
                         context:nil];
        [_mySettings addObserver:self
                      forKeyPath:@"brightness"
                         options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld)
                         context:nil];
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary<NSString *,id> *)change
                      context:(void *)context
{
    NSNumber *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSNumber *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    if ([keyPath isEqualToString:@"volume"])
        NSLog(@"Volume changed from: %@ to %@", oldValue, newValue);
    if ([keyPath isEqualToString:@"brightness"])
        NSLog(@"Brightness changed from: %@ to %@", oldValue, newValue);
}

-(void)dealloc
{
    [_mySettings removeObserver:self forKeyPath:@"volume"];
    [_mySettings removeObserver:self forKeyPath:@"brightness"];
    _mySettings = nil;
}

@end

