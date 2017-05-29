//
//  BubbleSort.m
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import "BubbleSort.h"

@implementation BubbleSort

+ (void)sort:(NSMutableArray<NSNumber *> *)array order:(BubbleSortOrder)order {
    NSUInteger arrayCount = array.count;

    if (arrayCount < 2) {
        return;
    }

    for (NSUInteger i = arrayCount; i > 0; i--) {
        for (NSUInteger j = 0; j < i - 1; j++) {
            NSNumber *currentNumber = array[j];
            NSUInteger nextIndex = j + 1;
            NSNumber *nextNumber = array[nextIndex];

            NSComparisonResult comparisonResult = [currentNumber compare:nextNumber];

            if ((order == BubbleSortOrderAsc && comparisonResult == NSOrderedDescending) ||
                (order == BubbleSortOrderDesc && comparisonResult == NSOrderedAscending)) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:nextIndex];
            }
        }
    }
}

@end
