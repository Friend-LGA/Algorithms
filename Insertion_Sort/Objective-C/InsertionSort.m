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
        NSNumber *currentNumber = array[i];

        for (NSUInteger j = i; j > 0; j--) {
            NSUInteger prevIndex = j - 1;
            NSNumber *prevNumber = array[prevIndex];
            NSComparisonResult comparisonResult = [prevNumber compare:currentNumber];

            if ((order == InsertionSortOrderAsc && comparisonResult == NSOrderedDescending) ||
                (order == InsertionSortOrderDesc && comparisonResult == NSOrderedAscending)) {
                [array exchangeObjectAtIndex:prevIndex withObjectAtIndex:j];
            }
            else {
                break;
            }
        }
    }
}

@end
