//
//  InsertionSort.m
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import "InsertionSort.h"

@implementation InsertionSort

+ (void)sort:(NSMutableArray<NSNumber *> *)array order:(InsertionSortOrder)order {
    NSUInteger arrayCount = array.count;

    if (arrayCount < 2) {
        return;
    }

    for (NSUInteger i = 1; i < arrayCount; i++) {
        NSNumber *current = array[i];

        for (NSUInteger index = i; index > 0; index--) {
            NSUInteger prevIndex = index - 1;
            NSNumber *prev = array[prevIndex];
            NSComparisonResult comparisonResult = [prev compare:current];

            if ((order == InsertionSortOrderAsc && comparisonResult == NSOrderedDescending) ||
                (order == InsertionSortOrderDesc && comparisonResult == NSOrderedAscending)) {
                [array exchangeObjectAtIndex:prevIndex withObjectAtIndex:index];
            }
            else {
                break;
            }
        }
    }
}

@end
