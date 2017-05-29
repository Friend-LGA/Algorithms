//
//  BidirectionalBubbleSort.m
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import "BidirectionalBubbleSort.h"

@implementation BidirectionalBubbleSort

+ (void)sort:(NSMutableArray<NSNumber *> *)array order:(BidirectionalBubbleSortOrder)order {
    NSUInteger arrayCount = array.count;

    if (arrayCount < 2) {
        return;
    }

    for (NSUInteger i = 0; i < ceil(arrayCount / 2.0); i++) {
        NSUInteger lastIndex = arrayCount - i - 1;

        for (NSUInteger j = i; j < lastIndex; j++) {
            NSNumber *currentNumber = array[j];
            NSUInteger nextIndex = j + 1;
            NSNumber *nextNumber = array[nextIndex];
            NSComparisonResult comparisonResult = [currentNumber compare:nextNumber];

            if ([self isShouldChange:order comparisonResult:comparisonResult]) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:nextIndex];
            }
        }

        for (NSUInteger j = lastIndex; j > i; j--) {
            NSNumber *currentNumber = array[j];
            NSUInteger prevIndex = j - 1;
            NSNumber *prevNumber = array[prevIndex];

            NSComparisonResult comparisonResult = [prevNumber compare:currentNumber];

            if ([self isShouldChange:order comparisonResult:comparisonResult]) {
                [array exchangeObjectAtIndex:prevIndex withObjectAtIndex:j];
            }
        }
    }
}

+ (BOOL)isShouldChange:(BidirectionalBubbleSortOrder)order comparisonResult:(NSComparisonResult)comparisonResult {
    return (order == BidirectionalBubbleSortOrderAsc && comparisonResult == NSOrderedDescending) ||
           (order == BidirectionalBubbleSortOrderDesc && comparisonResult == NSOrderedAscending);
}

@end
