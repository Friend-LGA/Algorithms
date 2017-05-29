//
//  QuickSort.h
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, QuickSortOrder) {
    QuickSortOrderAsc,
    QuickSortOrderDesc
};

@interface QuickSort : NSObject

/** Complexity is O(n * log(n)) */
+ (NSArray<NSNumber *> *)sortedArray:(NSArray<NSNumber *> *)array order:(QuickSortOrder)order;

@end
