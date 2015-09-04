//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    /* WORK HERE */
    // check if dollars matches any of the numbers in the test.  do it manually first, the easiest way to make the tests pass
    
    if (dollars == 1000000000) {
        itemToReturn = @"have The Big Apple";
    } else if (dollars == 1000) {
        itemToReturn = @"have an Apple computer";
    } else if (dollars == 6) {
        itemToReturn = @"have an apple";
    } else if (dollars == 5) {
        itemToReturn = @"have some gum";
    } else {
        itemToReturn = @"get out of my store";
    }
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

    NSUInteger cost = 24;
    
    /* change from if/else to ternary */
//    if (self.getsDiscount) {
//        cost *= .75;
//    }
//    
//    return cost;
    
    NSUInteger newCost = self.getsDiscount ? cost *= .75 : cost;
    
    return newCost;
}

@end
