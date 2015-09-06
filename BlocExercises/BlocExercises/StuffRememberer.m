//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    // this should save the EXACT same array, ie same place in memory, too.
    self.arraySavedForLater = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    // make a copy ((??) not sure if changing from propery from 'strong' to 'copy' is relevant here, but this works without it.  'copy' property assignment wouldn't matter in this case anyway, because the test occurs within the same instance...)
    self.arrayCopiedForLater = [arrayToCopy copy];
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.savedCgfloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return self.arraySavedForLater;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.arrayCopiedForLater;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.savedCgfloat;
}

@end