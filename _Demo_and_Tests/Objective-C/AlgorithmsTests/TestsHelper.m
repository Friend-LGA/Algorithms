//
//  TestsHelper.m
//  Algorithms
//

#import "TestsHelper.h"

@implementation TestsHelper

static NSMutableArray *_array;
static NSMutableArray *_sortedArrayAsc;
static NSMutableArray *_sortedArrayDesc;

+ (NSArray *)array {
    if (!_array) {
        _array = [NSMutableArray arrayWithObjects:@84, @48, @(-16), @1.24, @(-52), @0, @32, @(-77.12), @0, @37, @(-77.12), nil];
    }

    return _array;
}

+ (void)setArray:(NSMutableArray *)array {
    _array = array;
}

+ (NSArray *)sortedArrayAsc {
    if (!_sortedArrayAsc) {
        _sortedArrayAsc = [NSMutableArray arrayWithObjects:@(-77.12), @(-77.12), @(-52), @(-16), @0, @0, @1.24, @32, @37, @48, @84, nil];
    }

    return _sortedArrayAsc;
}

+ (void)setSortedArrayAsc:(NSMutableArray *)sortedArrayAsc {
    _sortedArrayAsc = sortedArrayAsc;
}

+ (NSArray *)sortedArrayDesc {
    if (!_sortedArrayDesc) {
        _sortedArrayDesc = [NSMutableArray arrayWithObjects:@84, @48, @37, @32, @1.24, @0, @0, @(-16), @(-52), @(-77.12), @(-77.12), nil];
    }

    return _sortedArrayDesc;
}

+ (void)setSortedArrayDesc:(NSMutableArray *)sortedArrayDesc {
    _sortedArrayDesc = sortedArrayDesc;
}

+ (void)reset {
    self.array = nil;
    self.sortedArrayAsc = nil;
    self.sortedArrayDesc = nil;
}

@end
