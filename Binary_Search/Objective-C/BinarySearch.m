//
//  BinarySearch.m
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import "BinarySearch.h"

@implementation BinarySearch

+ (NSUInteger)indexOfNumber:(NSNumber *)number inSortedArray:(NSArray<NSNumber *> *)array inPlace:(BOOL)inPlace {
    if (number == nil || array == nil || array.count == 0) {
        return NSNotFound;
    }

    if (inPlace) {
        return [self inPlaceIndexOfNumber:number inSortedArray:array range:NSMakeRange(0, array.count)];
    }
    else {
        return [self notInPlaceIndexOfNumber:number inSortedArray:array indexOffset:0];
    }
}

#pragma mark - In Place

+ (NSUInteger)inPlaceIndexOfNumber:(NSNumber *)number inSortedArray:(NSArray<NSNumber *> *)array range:(NSRange)range {
    if (range.length == 0) {
        return NSNotFound;
    }

    NSUInteger rangeLocation = range.location;
    NSUInteger rangeMiddleIndex = range.length / 2;
    NSUInteger middleIndex = rangeLocation + rangeMiddleIndex;
    NSNumber *middleNumber = array[middleIndex];

    switch ([number compare:middleNumber]) {
        case NSOrderedSame: {
            return middleIndex;
        }
        case NSOrderedAscending: {
            return [self inPlaceIndexOfNumber:number inSortedArray:array range:NSMakeRange(rangeLocation, rangeMiddleIndex)];
        }
        case NSOrderedDescending: {
            NSUInteger nextIndex = middleIndex + 1;
            return [self inPlaceIndexOfNumber:number inSortedArray:array range:NSMakeRange(nextIndex, array.count - nextIndex)];
        }
    }
}

#pragma mark - Not In Place

+ (NSUInteger)notInPlaceIndexOfNumber:(NSNumber *)number inSortedArray:(NSArray<NSNumber *> *)array indexOffset:(NSUInteger)indexOffset {
    NSUInteger arrayCount = array.count;

    if (arrayCount == 0) {
        return NSNotFound;
    }

    NSUInteger middleIndex = arrayCount / 2;
    NSNumber *middleNumber = array[middleIndex];

    switch ([number compare:middleNumber]) {
        case NSOrderedSame: {
            return middleIndex + indexOffset;
        }
        case NSOrderedAscending: {
            return [self notInPlaceIndexOfNumber:number inSortedArray:[array subarrayWithRange:NSMakeRange(0, middleIndex)] indexOffset:indexOffset];
        }
        case NSOrderedDescending: {
            NSUInteger nextIndex = middleIndex + 1;
            return [self notInPlaceIndexOfNumber:number inSortedArray:[array subarrayWithRange:NSMakeRange(nextIndex, arrayCount - nextIndex)] indexOffset:indexOffset + nextIndex];
        }
    }
}

@end
