//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSString *favDrink = characterDictionary[@"favorite drink"];
    return favDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    /* 
     initialize empty mutable array
     iterate thru arrays to get drinks
     add strings to mutable array
    */
    NSMutableArray *mutableDrinksArray = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < charactersArray.count ; i++) {
        NSString *favDrinks = charactersArray[i][@"favorite drink"];
        [mutableDrinksArray addObject:favDrinks];
    }
    return mutableDrinksArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];
    [mutableCharacterDictionary setObject:@"There are no compacts between lions and men, and wolves and lambs have no concord." forKey:@"quote"];
    return mutableCharacterDictionary;
}

@end
