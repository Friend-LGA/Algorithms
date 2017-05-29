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
    NSInteger resultIndex = [BinarySearch indexOfNumber:@(-1.5) inSortedArray:self.array inPlace:NO];

    XCTAssert(resultIndex == 0);
}

- (void)testCase2 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@(-1) inSortedArray:self.array inPlace:NO];

    XCTAssert(resultIndex == 1);
}

- (void)testCase3 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@(-0.5) inSortedArray:self.array inPlace:NO];

    XCTAssert(resultIndex == 2);
}

- (void)testCase4 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0 inSortedArray:self.array inPlace:NO];

    XCTAssert(resultIndex == 3);
}

- (void)testCase5 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0.5 inSortedArray:self.array inPlace:NO];

    XCTAssert(resultIndex == 4);
}

- (void)testCase6 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@1 inSortedArray:self.array inPlace:NO];

    XCTAssert(resultIndex == 5);
}

- (void)testCase7 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@1.5 inSortedArray:self.array inPlace:NO];

    XCTAssert(resultIndex == 6);
}

- (void)testNotIncluded {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@100 inSortedArray:self.array inPlace:NO];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNilSearchNumber {
    NSInteger resultIndex = [BinarySearch indexOfNumber:nil inSortedArray:self.array inPlace:NO];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNilArray {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0 inSortedArray:nil inPlace:NO];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testEmptyArray {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0 inSortedArray:@[] inPlace:NO];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testArrayWithOneNumber1 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0 inSortedArray:@[@0] inPlace:NO];

    XCTAssert(resultIndex == 0);
}

- (void)testArrayWithOneNumber2 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@100 inSortedArray:@[@0] inPlace:NO];

    XCTAssert(resultIndex == NSNotFound);
}

@end
