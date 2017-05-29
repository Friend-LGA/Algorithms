//
//  SelectionSort.m
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import "SelectionSort.h"

@implementation SelectionSort

+ (void)sort:(NSMutableArray<NSNumber *> *)array order:(SelectionSortOrder)order {
    NSUInteger arrayCount = array.count;

    if (arrayCount < 2) {
        return;
    }

    for (NSUInteger i = 0; i < arrayCount - 1; i++) {
        NSUInteger selectedIndex = i;
        NSNumber *selectedNumber = array[selectedIndex];

        for (NSUInteger j = i + 1; j < arrayCount; j++) {
            NSNumber *current = array[j];
            NSComparisonResult comparisonResult = [selectedNumber compare:current];

            if ((order == SelectionSortOrderAsc && comparisonResult == NSOrderedDescending) ||
                (order == SelectionSortOrderDesc && comparisonResult == NSOrderedAscending)) {
                selectedIndex = j;
                selectedNumber = array[selectedIndex];
            }
        }

        if (selectedIndex != i) {
            [array exchangeObjectAtIndex:i withObjectAtIndex:selectedIndex];
        }
    }
}

@end
