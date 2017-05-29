//
//  QuickSort.m
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import "QuickSort.h"

@implementation QuickSort

+ (NSArray<NSNumber *> *)sortedArray:(NSArray<NSNumber *> *)array order:(QuickSortOrder)order {
    NSUInteger arrayCount = array.count;

    if (arrayCount < 2) {
        return array.copy;
    }

    NSUInteger pivotIndex = arc4random() % arrayCount;
    NSNumber *pivotNumber = array[pivotIndex];

    NSMutableArray *lessArray = [NSMutableArray new];
    NSMutableArray *equalArray = [NSMutableArray new];
    NSMutableArray *greaterArray = [NSMutableArray new];

    for (NSNumber *number in array) {
        switch ([number compare:pivotNumber]) {
            case NSOrderedDescending:
                [lessArray addObject:number];
                break;
            case NSOrderedSame:
                [equalArray addObject:number];
                break;
            default:
                [greaterArray addObject:number];
                break;
        }
    }

    NSArray *lessSortedArray = [self sortedArray:lessArray order:order];
    NSArray *greaterSortedArray = [self sortedArray:greaterArray order:order];

    return [self mergedLessArray:lessSortedArray equalArray:equalArray greaterArray:greaterSortedArray order:order];
}

+ (NSArray *)mergedLessArray:(NSArray *)lessArray equalArray:(NSArray *)equalArray greaterArray:(NSArray *)greaterArray order:(QuickSortOrder)order {
    NSMutableArray *resultArray = [NSMutableArray arrayWithCapacity:lessArray.count + equalArray.count + greaterArray.count];

    if (order == QuickSortOrderAsc) {
        [resultArray addObjectsFromArray:greaterArray];
        [resultArray addObjectsFromArray:equalArray];
        [resultArray addObjectsFromArray:lessArray];
    }
    else {
        [resultArray addObjectsFromArray:lessArray];
        [resultArray addObjectsFromArray:equalArray];
        [resultArray addObjectsFromArray:greaterArray];
    }

    return resultArray.copy;
}

@end
