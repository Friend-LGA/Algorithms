//
//  MergeSort.h
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, MergeSortOrder) {
    MergeSortOrderAsc,
    MergeSortOrderDesc
};

@interface MergeSort : NSObject

/** Complexity is O(n * log(n)) */
+ (NSArray<NSNumber *> *)sortedArray:(NSArray<NSNumber *> *)array order:(MergeSortOrder)order;

@end
