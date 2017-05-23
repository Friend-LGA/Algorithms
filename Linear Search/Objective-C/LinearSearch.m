//
//  LinearSearch.m
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

#import "LinearSearch.h"

@implementation LinearSearch

#pragma mark - Objects

+ (NSUInteger)indexOfObject:(id)object inArray:(NSArray *)array {
    if (object == nil || array == nil) {
        return NSNotFound;
    }

    for (NSUInteger i=0; i<array.count; i++) {
        if (object == array[i]) {
            return i;
        }
    }

    return NSNotFound;
}

+ (NSArray<NSNumber *> *)indexesOfObject:(id)object inArray:(NSArray *)array {
    if (object == nil || array == nil) {
        return @[];
    }

    NSMutableArray *result = [NSMutableArray new];

    for (NSUInteger i=0; i<array.count; i++) {
        if (object == array[i]) {
            [result addObject:@(i)];
        }
    }

    return result.copy;
}

#pragma mark - Equal Objects

+ (NSUInteger)indexOfEqualObject:(id)object inArray:(NSArray *)array {
    if (object == nil || array == nil) {
        return NSNotFound;
    }

    for (NSUInteger i=0; i<array.count; i++) {
        if ([object isEqualTo:array[i]]) {
            return i;
        }
    }

    return NSNotFound;
}

+ (NSArray<NSNumber *> *)indexesOfEqualObjects:(id)object inArray:(NSArray *)array {
    if (object == nil || array == nil) {
        return @[];
    }

    NSMutableArray *result = [NSMutableArray new];

    for (NSUInteger i=0; i<array.count; i++) {
        if ([object isEqualTo:array[i]]) {
            [result addObject:@(i)];
        }
    }

    return result.copy;
}

@end
