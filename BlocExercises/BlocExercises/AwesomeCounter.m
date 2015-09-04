//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    /* 
     initialize mutable string
     inside while or for loop, append formatted strings
     deal with 'lowNumber' being in fact bigger case
    */
    NSMutableString *numsInRangeMutableString = [[NSMutableString alloc] init];
    
    NSInteger trueLowNumber = number < otherNumber ? number : otherNumber;
    NSInteger trueHighNumber = number > otherNumber ? number : otherNumber;
    
    while (trueLowNumber <= trueHighNumber) {
        [numsInRangeMutableString appendString:[NSString stringWithFormat:@"%ld", (long)trueLowNumber]];
        trueLowNumber++;
    }
    return numsInRangeMutableString;
}

@end
