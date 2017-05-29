//
//  ShellSort.m
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import "ShellSort.h"

@implementation ShellSort

+ (NSArray<NSNumber *> *)sortedArray:(NSArray<NSNumber *> *)array order:(ShellSortOrder)order {
    NSUInteger arrayCount = array.count;

    if (arrayCount < 2) {
        return array.copy;
    }

    NSMutableArray *resultArray = array.mutableCopy;
    NSUInteger gapSize = arrayCount / 2;

    while (gapSize >= 1) {
        for (NSUInteger i = gapSize; i < arrayCount; i += gapSize) {
            NSNumber *currentNumber = resultArray[i];
            
            for (NSUInteger j = i; j > 0; j -= gapSize) {
                NSUInteger prevIndex = j - gapSize;
                NSNumber *prevNumber = resultArray[prevIndex];
                NSComparisonResult comparisonResult = [prevNumber compare:currentNumber];

                if ((order == ShellSortOrderAsc && comparisonResult == NSOrderedDescending) ||
                    (order == ShellSortOrderDesc && comparisonResult == NSOrderedAscending)) {
                    [resultArray exchangeObjectAtIndex:prevIndex withObjectAtIndex:j];
                }
                else {
                    break;
                }
            }
        }

        gapSize /= 2;
    }


    return resultArray.copy;
}

@end
