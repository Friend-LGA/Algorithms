//
//  LinearSearch.h
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import <Foundation/Foundation.h>

@interface LinearSearch : NSObject

#pragma mark - Objects

/** Complexity is O(n) */
+ (NSUInteger)indexOfObject:(id)object inArray:(NSArray *)array;

/** Complexity is O(n) */
+ (NSArray<NSNumber *> *)indexesOfObject:(id)object inArray:(NSArray *)array;

#pragma mark - Equal Objects

/** Complexity is O(n) */
+ (NSUInteger)indexOfEqualObject:(id)object inArray:(NSArray *)array;

/** Complexity is O(n) */
+ (NSArray<NSNumber *> *)indexesOfEqualObjects:(id)object inArray:(NSArray *)array;

@end
