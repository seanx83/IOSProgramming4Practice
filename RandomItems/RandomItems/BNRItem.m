//
//  BNRItem.m
//  RandomItems
//
//  Created by SeanXiang on 03/10/2016.
//  Copyright © 2016 SeanXiang. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype) randomItem
{
    // Array of three adjectives
    // Array of three nouns
    NSArray* randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    NSArray* randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    // Random name
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    NSString* randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    
    // Random value
    int randomValue = arc4random() % 100;
    
    // Random serial number
    NSString* randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    // init random item
    BNRItem* newItem = [[BNRItem alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return newItem;
    
}

- (instancetype) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self)
    {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

- (instancetype) initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (instancetype) init
{
    return [self initWithItemName:@"Item"];
}

- (void) dealloc
{
    NSLog(@"Destroyed: %@", self);
}

//- (void) setItemName:(NSString *)str
//{
//    _itemName = str;
//}
//
//- (NSString*) itemName
//{
//    return _itemName;
//}
//
//- (void) setSerialNumber:(NSString *)str
//{
//    _serialNumber = str;
//}
//
//- (NSString*) serialNumber
//{
//    return _serialNumber;
//}
//
//- (void) setValueInDollars:(int)v
//{
//    _valueInDollars = v;
//}
//
//- (int) valueInDollars
//{
//    return _valueInDollars;
//}
//
//- (NSDate*) dateCreated
//{
//    return _dateCreated;
//}

- (NSString*) description
{
    NSString* descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName,self.serialNumber,self.valueInDollars,self.dateCreated];
    
    return descriptionString;
}
@end
