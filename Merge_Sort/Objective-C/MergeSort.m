//
//  MergeSort.m
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import "MergeSort.h"

@implementation MergeSort

+ (NSArray<NSNumber *> *)sortedArray:(NSArray<NSNumber *> *)array order:(MergeSortOrder)order {
    NSUInteger arrayCount = array.count;

    if (arrayCount < 2) {
        return array.copy;
    }

    NSUInteger middleIndex = arrayCount / 2;

    NSArray *firstArray = [self sortedArray:[array subarrayWithRange:NSMakeRange(0, middleIndex)] order:order];
    NSArray *secondArray = [self sortedArray:[array subarrayWithRange:NSMakeRange(middleIndex, arrayCount - middleIndex)] order:order];

    return [self mergedFirstArray:firstArray secondArray:secondArray order:order];
}

+ (NSArray *)mergedFirstArray:(NSArray *)firstArray secondArray:(NSArray *)secondArray order:(MergeSortOrder)order {
    NSUInteger firstArrayCount = firstArray.count;
    NSUInteger secondArrayCount = secondArray.count;

    NSUInteger firstCounter = 0;
    NSUInteger secondCounter = 0;
    NSMutableArray *resultArray = [NSMutableArray arrayWithCapacity:firstArrayCount + secondArrayCount];

    while(firstCounter < firstArrayCount || secondCounter < secondArrayCount) {
        if (firstCounter == firstArrayCount) {
            [resultArray addObject:secondArray[secondCounter]];
            secondCounter++;
            continue;
        }

        if (secondCounter == secondArrayCount) {
            [resultArray addObject:firstArray[firstCounter]];
            firstCounter++;
            continue;
        }

        NSNumber *firstNumber = firstArray[firstCounter];
        NSNumber *secondNumber = secondArray[secondCounter];
        NSComparisonResult comparisonResult = [firstNumber compare:secondNumber];

        if (comparisonResult == NSOrderedSame) {
            [resultArray addObject:firstNumber];
            [resultArray addObject:secondNumber];

            firstCounter++;
            secondCounter++;
        }
        else if ((order == MergeSortOrderAsc && comparisonResult == NSOrderedAscending) ||
            (order == MergeSortOrderDesc && comparisonResult == NSOrderedDescending)) {
            [resultArray addObject:firstNumber];
            firstCounter++;
        }
        else {
            [resultArray addObject:secondNumber];
            secondCounter++;
        }
    }

    return resultArray.copy;
}

@end
