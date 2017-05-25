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
        for (NSUInteger index = 0; index < i - 1; index++) {
            NSUInteger nextIndex = index + 1;
            NSComparisonResult comparisonResult = [array[index] compare:array[nextIndex]];

            if ((order == BubbleSortOrderAsc && comparisonResult == NSOrderedDescending) ||
                (order == BubbleSortOrderDesc && comparisonResult == NSOrderedAscending)) {
                [array exchangeObjectAtIndex:index withObjectAtIndex:nextIndex];
            }
        }
    }
}

@end
