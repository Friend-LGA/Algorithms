//
//  BubbleSortTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "BubbleSort.h"

@interface BubbleSortTests : XCTestCase

@property (strong, nonatomic) NSMutableArray *array;
@property (strong, nonatomic) NSMutableArray *sortedArrayAsc;
@property (strong, nonatomic) NSMutableArray *sortedArrayDesc;

@end

@implementation BubbleSortTests

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
    [BubbleSort sort:self.array order:BubbleSortOrderAsc];

    XCTAssertEqualObjects(self.array, self.sortedArrayAsc);
}

- (void)testAscEven {
    [self.array addObject:@100];
    [self.sortedArrayAsc addObject:@100];

    [BubbleSort sort:self.array order:BubbleSortOrderAsc];

    XCTAssertEqualObjects(self.array, self.sortedArrayAsc);
}

- (void)testDescOdd {
    [BubbleSort sort:self.array order:BubbleSortOrderDesc];

    XCTAssertEqualObjects(self.array, self.sortedArrayDesc);
}

- (void)testDescEven {
    [self.array addObject:@100];
    [self.sortedArrayDesc insertObject:@100 atIndex:0];

    [BubbleSort sort:self.array order:BubbleSortOrderDesc];

    XCTAssertEqualObjects(self.array, self.sortedArrayDesc);
}

- (void)testNilArray {
    NSMutableArray *resultArray = nil;

    [BubbleSort sort:resultArray order:BubbleSortOrderAsc];

    XCTAssert(resultArray == nil);
}

- (void)testEmptyArray {
    NSMutableArray *resultArray = [NSMutableArray new];

    [BubbleSort sort:resultArray order:BubbleSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[]);
}

- (void)testArrayWithOneNumber {
    NSMutableArray *resultArray = [NSMutableArray arrayWithObject:@0];

    [BubbleSort sort:resultArray order:BubbleSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[@0]);
}

@end
