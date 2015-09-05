//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *charactersArray = [characterString componentsSeparatedByString:@";"];
    return charactersArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *charactersString = [characterArray componentsJoinedByString:@";"];
    return charactersString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *mutableCharacterArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    return mutableCharacterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *mutableCharacterArray = [characterArray mutableCopy];
    NSPredicate *containsWorfPredicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [mutableCharacterArray filterUsingPredicate:containsWorfPredicate];
    BOOL containsWorfBool = mutableCharacterArray.count == 0 ? NO : YES;
    return containsWorfBool;
}

@end
