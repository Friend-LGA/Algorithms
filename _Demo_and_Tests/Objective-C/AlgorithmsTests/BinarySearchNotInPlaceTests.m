//
//  BinarySearchNotInPlaceTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "BinarySearch.h"

@interface BinarySearchNotInPlaceTests : XCTestCase

@property (strong, nonatomic) NSArray *array;

@end

@implementation BinarySearchNotInPlaceTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (NSArray *)array {
    if (!_array) {
        _array = @[@(-1.5), @(-1), @(-0.5), @0, @0.5, @1, @1.5];
    }

    return _array;
}

#pragma mark -

- (void)testCase1 {
    NSInteger result = [BinarySearch indexOfNumber:@(-1.5) inSortedArray:self.array inPlace:NO];

    XCTAssert(result == 0);
}

- (void)testCase2 {
    NSInteger result = [BinarySearch indexOfNumber:@(-1) inSortedArray:self.array inPlace:NO];

    XCTAssert(result == 1);
}

- (void)testCase3 {
    NSInteger result = [BinarySearch indexOfNumber:@(-0.5) inSortedArray:self.array inPlace:NO];

    XCTAssert(result == 2);
}

- (void)testCase4 {
    NSInteger result = [BinarySearch indexOfNumber:@0 inSortedArray:self.array inPlace:NO];

    XCTAssert(result == 3);
}

- (void)testCase5 {
    NSInteger result = [BinarySearch indexOfNumber:@0.5 inSortedArray:self.array inPlace:NO];

    XCTAssert(result == 4);
}

- (void)testCase6 {
    NSInteger result = [BinarySearch indexOfNumber:@1 inSortedArray:self.array inPlace:NO];

    XCTAssert(result == 5);
}

- (void)testCase7 {
    NSInteger result = [BinarySearch indexOfNumber:@1.5 inSortedArray:self.array inPlace:NO];

    XCTAssert(result == 6);
}

- (void)testNotIncluded {
    NSInteger result = [BinarySearch indexOfNumber:@100 inSortedArray:self.array inPlace:NO];

    XCTAssert(result == NSNotFound);
}

- (void)testNilSearchNumber {
    NSInteger result = [BinarySearch indexOfNumber:nil inSortedArray:self.array inPlace:NO];

    XCTAssert(result == NSNotFound);
}

- (void)testNilArray {
    NSInteger result = [BinarySearch indexOfNumber:@0 inSortedArray:nil inPlace:NO];

    XCTAssert(result == NSNotFound);
}

- (void)testEmptyArray {
    NSInteger result = [BinarySearch indexOfNumber:@0 inSortedArray:@[] inPlace:NO];

    XCTAssert(result == NSNotFound);
}

- (void)testArrayWithOneNumber1 {
    NSInteger result = [BinarySearch indexOfNumber:@0 inSortedArray:@[@0] inPlace:NO];

    XCTAssert(result == 0);
}

- (void)testArrayWithOneNumber2 {
    NSInteger result = [BinarySearch indexOfNumber:@100 inSortedArray:@[@0] inPlace:NO];

    XCTAssert(result == NSNotFound);
}

@end
