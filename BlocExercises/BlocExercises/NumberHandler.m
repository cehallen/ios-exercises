//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    NSInteger num = [number integerValue] * 2;
    return [NSNumber numberWithInt:num];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    /*
     intantiate empty mutable answer array
     check for smaller NSInteger.
     loop from smaller to bigger, 
     converting to NSNumber,
     and adding to mutable array on each iteration.
     */
    NSMutableArray *mutableNumbersArray = [[NSMutableArray alloc] init];
    NSInteger smallerInt = number < otherNumber ? number : otherNumber;
    NSInteger largerInt = number >= otherNumber ? number : otherNumber;
    for (NSInteger i = smallerInt; i <= largerInt; i++) {
        [mutableNumbersArray addObject:[NSNumber numberWithInt:i]];
    }
    return mutableNumbersArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSMutableArray *mutableArrayOfNumbers = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [mutableArrayOfNumbers sortUsingDescriptors:@[sortDescriptor]];
    return [mutableArrayOfNumbers[0] integerValue];;
}

@end
