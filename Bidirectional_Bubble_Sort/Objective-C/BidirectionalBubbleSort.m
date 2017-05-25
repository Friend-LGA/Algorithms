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

        for (NSUInteger index = i; index < lastIndex; index++) {
            NSUInteger nextIndex = index + 1;
            NSComparisonResult comparisonResult = [array[index] compare:array[nextIndex]];

            if ([self isShouldChange:order comparisonResult:comparisonResult]) {
                [array exchangeObjectAtIndex:index withObjectAtIndex:nextIndex];
            }
        }

        for (NSUInteger index = lastIndex; index > i; index--) {
            NSUInteger nextIndex = index - 1;
            NSComparisonResult comparisonResult = [array[nextIndex] compare:array[index]];

            if ([self isShouldChange:order comparisonResult:comparisonResult]) {
                [array exchangeObjectAtIndex:nextIndex withObjectAtIndex:index];
            }
        }
    }
}

+ (BOOL)isShouldChange:(BidirectionalBubbleSortOrder)order comparisonResult:(NSComparisonResult)comparisonResult {
    return (order == BidirectionalBubbleSortOrderAsc && comparisonResult == NSOrderedDescending) ||
           (order == BidirectionalBubbleSortOrderDesc && comparisonResult == NSOrderedAscending);
}

@end
