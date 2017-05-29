//
//  LinearSearchObjectsTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "LinearSearch.h"

@interface LinearSearchObjectsTests : XCTestCase

@property (strong, nonatomic) NSArray *array;

@end

@implementation LinearSearchObjectsTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (NSArray *)array {
    if (!_array) {
        _array = @[@(-1), @0, @1, @1,
                   @(-1.5), @0.5, @1.5, @1.5];
    }

    return _array;
}

#pragma mark - Integers (point to the same memory address)

- (void)testIntegerFirst {
    NSUInteger resultIndex = [LinearSearch indexOfObject:self.array[2] inArray:self.array];

    XCTAssert(resultIndex == 2);
}

- (void)testIntegerSecond {
    NSUInteger resultIndex = [LinearSearch indexOfObject:self.array[3] inArray:self.array];

    XCTAssert(resultIndex == 2);
}

- (void)testIntegers {
    NSArray *resultArray = [LinearSearch indexesOfObject:self.array[2] inArray:self.array];
    NSArray *expectedArray = @[@2, @3];

    XCTAssertEqualObjects(resultArray, expectedArray);
}

#pragma mark - Floats

- (void)testFloatFirst {
    NSUInteger resultIndex = [LinearSearch indexOfObject:self.array[6] inArray:self.array];

    XCTAssert(resultIndex == 6);
}

- (void)testFloatSecond {
    NSUInteger resultIndex = [LinearSearch indexOfObject:self.array[7] inArray:self.array];

    XCTAssert(resultIndex == 7);
}

- (void)testFloats {
    NSArray *resultArray = [LinearSearch indexesOfObject:self.array[6] inArray:self.array];
    NSArray *expectedArray = @[@6];

    XCTAssertEqualObjects(resultArray, expectedArray);
}

#pragma mark - Not Included

- (void)testNotIncludedObject {
    NSUInteger resultIndex = [LinearSearch indexOfObject:@100 inArray:self.array];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNotIncludedObjects {
    NSArray *resultArray = [LinearSearch indexesOfObject:@100 inArray:self.array];

    XCTAssertEqualObjects(resultArray, @[]);
}

#pragma mark - Nil Search Object

- (void)testNilSearchObject {
    NSUInteger resultIndex = [LinearSearch indexOfObject:nil inArray:self.array];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNilSearchObjects {
    NSArray *resultArray = [LinearSearch indexesOfObject:nil inArray:self.array];

    XCTAssertEqualObjects(resultArray, @[]);
}

#pragma mark - Nil Array

- (void)testNilArrayForObject {
    NSUInteger resultIndex = [LinearSearch indexOfObject:@YES inArray:nil];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNilArrayForObjects {
    NSArray *resultArray = [LinearSearch indexesOfObject:@YES inArray:nil];

    XCTAssertEqualObjects(resultArray, @[]);
}

@end
