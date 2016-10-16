//
//  BNRItem.h
//  RandomItems
//
//  Created by SeanXiang on 03/10/2016.
//  Copyright © 2016 SeanXiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
//{
//    NSString *_itemName;
//    NSString *_serialNumber;
//    int _valueInDollars;
//    NSDate *_dateCreated;
//}

@property (nonatomic, copy) NSString* itemName;
@property (nonatomic, copy) NSString* serialNumber;
@property (nonatomic, unsafe_unretained) int valueInDollars;
@property (nonatomic, readonly) NSDate* dateCreated;

+ (instancetype) randomItem;

// User defined initialization method
- (instancetype) initWithItemName:(NSString*) name
                   valueInDollars:(int) value
                     serialNumber:(NSString*) sNumber;

- (instancetype) initWithItemName:(NSString*) name;

- (void) setItemName:(NSString*)str;
- (NSString*) itemName;

- (void) setSerialNumber:(NSString*)str;
- (NSString*) serialNumber;

- (void) setValueInDollars:(int)v;
- (int) valueInDollars;

- (NSDate*) dateCreated;
@end
