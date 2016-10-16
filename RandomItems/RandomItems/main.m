//
//  main.m
//  RandomItems
//
//  Created by SeanXiang on 03/10/2016.
//  Copyright © 2016 SeanXiang. All rights reserved.
//

@import Foundation;
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
//        [items addObject:@"One"];
//        [items addObject:@"Two"];
//        [items addObject:@"Three"];
//        
//        [items insertObject:@"Zero" atIndex:0];
        
        // loop to send elements of array to console.
//        for (int i = 0; i < [items count]; i ++)
//        {
//            NSString *item = [items objectAtIndex:i];
//            NSLog(@"%@", item);
//        }
        
        for (int i = 0; i < 10; i ++)
        {
            [items addObject:[BNRItem randomItem]];
        }
        
        // Exception code
//        id lastObj = [items lastObject];
//        [lastObj count];

        for (NSString* item in items)
        {
            NSLog(@"%@", item);
        }
        
//        BNRItem* item = [[BNRItem alloc] init];
//        [item setItemName:@"Red Sofa"];
//        [item setSerialNumber:@"A1B2C"];
//        [item setValueInDollars:200];
        
//        item.itemName = @"Red Sofa";
//        item.serialNumber = @"A1B2C";
//        item.valueInDollars = 200;
//        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
        
//        BNRItem* item = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:200 serialNumber:@"A1B2C"];
//        
//        NSLog(@"%@", item);
//        
//        BNRItem* itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
//        
//        NSLog(@"%@", itemWithName);
//        
//        BNRItem* itemWithNoName = [[BNRItem alloc] init];
//        
//        NSLog(@"%@", itemWithNoName);
        
        
        items = nil;
        
        NSLog(@"-----------------------------------------------------------------------------------");
        
        BNRContainer* container = [[BNRContainer alloc] init];
        container.valueInDollars = 22;
        [container addBNRItem:[BNRItem randomItem]];
        [container addBNRItem:[BNRItem randomItem]];
        [container addBNRItem:[BNRItem randomItem]];
        [container addBNRItem:[BNRItem randomItem]];
        [container addBNRItem:[BNRItem randomItem]];
        [container addBNRItem:[BNRItem randomItem]];
        [container addBNRItem:[BNRItem randomItem]];
        [container addBNRItem:[BNRItem randomItem]];
        [container addBNRItem:[BNRItem randomItem]];
        [container addBNRItem:[BNRItem randomItem]];
        NSLog(@"%@", container);
        
    }
    return 0;
}
