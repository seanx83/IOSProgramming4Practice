//
//  BNRContainer.h
//  RandomItems
//
//  Created by SeanXiang on 07/10/2016.
//  Copyright © 2016 SeanXiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray* _subItems;
}

- (void) addBNRItem:(BNRItem*) item;
@end
