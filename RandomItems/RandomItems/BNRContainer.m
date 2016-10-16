//
//  BNRContainer.m
//  RandomItems
//
//  Created by SeanXiang on 07/10/2016.
//  Copyright © 2016 SeanXiang. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype) init
{
    self = [super init];
    _subItems = [[NSMutableArray alloc] init];
    
    return self;
}

- (void) addBNRItem:(BNRItem *)item
{
    [_subItems addObject:item];
}

- (NSString*) description
{
    int valuesSum = 0;
    NSString* descriptionString = [[NSString alloc] init];
    for (BNRItem* item in _subItems)
    {
        valuesSum += item.valueInDollars;
        NSString* subDescription = [[NSString alloc] initWithFormat:@"%@\n", item];
        descriptionString = [descriptionString stringByAppendingString:subDescription];
    }
    
    valuesSum += self.valueInDollars;
    descriptionString = [descriptionString stringByAppendingString:[[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName,self.serialNumber,valuesSum,self.dateCreated]];
    
    return descriptionString;
}
@end
