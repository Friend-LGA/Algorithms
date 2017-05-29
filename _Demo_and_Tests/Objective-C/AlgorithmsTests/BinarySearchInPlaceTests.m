//
//  BinarySearchInPlaceTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "BinarySearch.h"

@interface BinarySearchInPlaceTests : XCTestCase

@property (strong, nonatomic) NSArray *array;

@end

@implementation BinarySearchInPlaceTests

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
    NSInteger resultIndex = [BinarySearch indexOfNumber:@(-1.5) inSortedArray:self.array inPlace:YES];

    XCTAssert(resultIndex == 0);
}

- (void)testCase2 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@(-1) inSortedArray:self.array inPlace:YES];

    XCTAssert(resultIndex == 1);
}

- (void)testCase3 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@(-0.5) inSortedArray:self.array inPlace:YES];

    XCTAssert(resultIndex == 2);
}

- (void)testCase4 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0 inSortedArray:self.array inPlace:YES];

    XCTAssert(resultIndex == 3);
}

- (void)testCase5 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0.5 inSortedArray:self.array inPlace:YES];

    XCTAssert(resultIndex == 4);
}

- (void)testCase6 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@1 inSortedArray:self.array inPlace:YES];

    XCTAssert(resultIndex == 5);
}

- (void)testCase7 {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@1.5 inSortedArray:self.array inPlace:YES];

    XCTAssert(resultIndex == 6);
}

- (void)testNotIncluded {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@100 inSortedArray:self.array inPlace:YES];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNilSearchNumber {
    NSInteger resultIndex = [BinarySearch indexOfNumber:nil inSortedArray:self.array inPlace:YES];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNilArray {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0 inSortedArray:nil inPlace:YES];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testEmptyArray {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0 inSortedArray:@[] inPlace:YES];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testArrayWithOneNumberIncluded {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@0 inSortedArray:@[@0] inPlace:YES];

    XCTAssert(resultIndex == 0);
}

- (void)testArrayWithOneNumberNotIncluded {
    NSInteger resultIndex = [BinarySearch indexOfNumber:@100 inSortedArray:@[@0] inPlace:YES];

    XCTAssert(resultIndex == NSNotFound);
}

@end
