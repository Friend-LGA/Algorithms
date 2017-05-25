//
//  BidirectionalBubbleSort.h
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, BidirectionalBubbleSortOrder) {
    BidirectionalBubbleSortOrderAsc,
    BidirectionalBubbleSortOrderDesc
};

@interface BidirectionalBubbleSort : NSObject

/** Complexity is O(n^2) */
+ (void)sort:(NSMutableArray<NSNumber *> *)array order:(BidirectionalBubbleSortOrder)order;

@end
