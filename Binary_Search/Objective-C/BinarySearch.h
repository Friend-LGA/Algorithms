//
//  BinarySearch.h
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import <Foundation/Foundation.h>

@interface BinarySearch : NSObject

/** Complexity is O(log(n)), array must be sorted */
+ (NSUInteger)indexOfNumber:(NSNumber *)number inSortedArray:(NSArray<NSNumber *> *)array inPlace:(BOOL)inPlace;

@end
