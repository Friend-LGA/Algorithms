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
        NSNumber *selected = array[selectedIndex];

        for (NSUInteger index = i + 1; index < arrayCount; index++) {
            NSNumber *current = array[index];
            NSComparisonResult comparisonResult = [selected compare:current];

            if ((order == SelectionSortOrderAsc && comparisonResult == NSOrderedDescending) ||
                (order == SelectionSortOrderDesc && comparisonResult == NSOrderedAscending)) {
                selectedIndex = index;
                selected = array[selectedIndex];
            }
        }

        if (selectedIndex != i) {
            [array exchangeObjectAtIndex:i withObjectAtIndex:selectedIndex];
        }
    }
}

@end
