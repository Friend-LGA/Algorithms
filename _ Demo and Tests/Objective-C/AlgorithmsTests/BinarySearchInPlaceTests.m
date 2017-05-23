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

    self.array = @[@(-1.5), @(-1), @(-0.5), @0, @0.5, @1, @1.5];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testCase1 {
    NSInteger result = [BinarySearch indexOfNumber:@(-1.5) inSortedArray:self.array inPlace:YES];

    XCTAssert(result == 0);
}

- (void)testCase2 {
    NSInteger result = [BinarySearch indexOfNumber:@(-1) inSortedArray:self.array inPlace:YES];

    XCTAssert(result == 1);
}

- (void)testCase3 {
    NSInteger result = [BinarySearch indexOfNumber:@(-0.5) inSortedArray:self.array inPlace:YES];

    XCTAssert(result == 2);
}

- (void)testCase4 {
    NSInteger result = [BinarySearch indexOfNumber:@0 inSortedArray:self.array inPlace:YES];

    XCTAssert(result == 3);
}

- (void)testCase5 {
    NSInteger result = [BinarySearch indexOfNumber:@0.5 inSortedArray:self.array inPlace:YES];

    XCTAssert(result == 4);
}

- (void)testCase6 {
    NSInteger result = [BinarySearch indexOfNumber:@1 inSortedArray:self.array inPlace:YES];

    XCTAssert(result == 5);
}

- (void)testCase7 {
    NSInteger result = [BinarySearch indexOfNumber:@1.5 inSortedArray:self.array inPlace:YES];

    XCTAssert(result == 6);
}

- (void)testNotIncluded {
    NSInteger result = [BinarySearch indexOfNumber:@100 inSortedArray:self.array inPlace:YES];

    XCTAssert(result == NSNotFound);
}

- (void)testNilSearchNumber {
    NSInteger result = [BinarySearch indexOfNumber:nil inSortedArray:self.array inPlace:YES];

    XCTAssert(result == NSNotFound);
}

- (void)testNilArray {
    NSInteger result = [BinarySearch indexOfNumber:@0 inSortedArray:nil inPlace:YES];

    XCTAssert(result == NSNotFound);
}

- (void)testEmptyArray {
    NSInteger result = [BinarySearch indexOfNumber:@0 inSortedArray:@[] inPlace:YES];

    XCTAssert(result == NSNotFound);
}

- (void)testArrayWithOneNumberIncluded {
    NSInteger result = [BinarySearch indexOfNumber:@0 inSortedArray:@[@0] inPlace:YES];

    XCTAssert(result == 0);
}

- (void)testArrayWithOneNumberNotIncluded {
    NSInteger result = [BinarySearch indexOfNumber:@100 inSortedArray:@[@0] inPlace:YES];

    XCTAssert(result == NSNotFound);
}

@end
