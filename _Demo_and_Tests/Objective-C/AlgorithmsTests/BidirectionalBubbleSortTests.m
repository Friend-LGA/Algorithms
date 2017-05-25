//
//  BidirectionalBubbleSortTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "BidirectionalBubbleSort.h"

@interface BidirectionalBubbleSortTests : XCTestCase

@property (strong, nonatomic) NSMutableArray *array;
@property (strong, nonatomic) NSMutableArray *sortedArrayAsc;
@property (strong, nonatomic) NSMutableArray *sortedArrayDesc;

@end

@implementation BidirectionalBubbleSortTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    self.array = nil;
    self.sortedArrayAsc = nil;
    self.sortedArrayDesc = nil;

    [super tearDown];
}

- (NSArray *)array {
    if (!_array) {
        _array = [NSMutableArray arrayWithObjects:@84, @48, @(-16), @1.24, @(-52), @0, @32, @(-77.12), @0, @37, @(-77.12), nil];
    }

    return _array;
}

- (NSArray *)sortedArrayAsc {
    if (!_sortedArrayAsc) {
        _sortedArrayAsc = [NSMutableArray arrayWithObjects:@(-77.12), @(-77.12), @(-52), @(-16), @0, @0, @1.24, @32, @37, @48, @84, nil];
    }

    return _sortedArrayAsc;
}

- (NSArray *)sortedArrayDesc {
    if (!_sortedArrayDesc) {
        _sortedArrayDesc = [NSMutableArray arrayWithObjects:@84, @48, @37, @32, @1.24, @0, @0, @(-16), @(-52), @(-77.12), @(-77.12), nil];
    }

    return _sortedArrayDesc;
}

#pragma mark -

- (void)testAscOdd {
    [BidirectionalBubbleSort sort:self.array order:BidirectionalBubbleSortOrderAsc];

    XCTAssertEqualObjects(self.array, self.sortedArrayAsc);
}

- (void)testAscEven {
    [self.array addObject:@100];
    [self.sortedArrayAsc addObject:@100];

    [BidirectionalBubbleSort sort:self.array order:BidirectionalBubbleSortOrderAsc];

    XCTAssertEqualObjects(self.array, self.sortedArrayAsc);
}

- (void)testDescOdd {
    [BidirectionalBubbleSort sort:self.array order:BidirectionalBubbleSortOrderDesc];

    XCTAssertEqualObjects(self.array, self.sortedArrayDesc);
}

- (void)testDescEven {
    [self.array addObject:@100];
    [self.sortedArrayDesc insertObject:@100 atIndex:0];

    [BidirectionalBubbleSort sort:self.array order:BidirectionalBubbleSortOrderDesc];

    XCTAssertEqualObjects(self.array, self.sortedArrayDesc);
}

- (void)testNilArray {
    NSMutableArray *resultArray = nil;

    [BidirectionalBubbleSort sort:resultArray order:BidirectionalBubbleSortOrderAsc];

    XCTAssert(resultArray == nil);
}

- (void)testEmptyArray {
    NSMutableArray *resultArray = [NSMutableArray new];

    [BidirectionalBubbleSort sort:resultArray order:BidirectionalBubbleSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[]);
}

- (void)testArrayWithOneNumber {
    NSMutableArray *resultArray = [NSMutableArray arrayWithObject:@0];

    [BidirectionalBubbleSort sort:resultArray order:BidirectionalBubbleSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[@0]);
}

@end
