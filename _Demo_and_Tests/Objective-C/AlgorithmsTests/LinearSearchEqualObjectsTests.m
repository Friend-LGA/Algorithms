//
//  LinearSearchEqualObjectsTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "LinearSearch.h"

@interface LinearSearchEqualObjectsTests : XCTestCase

@property (strong, nonatomic) NSArray *array;

@end

@implementation LinearSearchEqualObjectsTests

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

- (void)testInteger {
    NSUInteger resultIndex = [LinearSearch indexOfEqualObject:@1.0 inArray:self.array];

    XCTAssert(resultIndex == 2);
}

- (void)testIntegers {
    NSArray *resultArray = [LinearSearch indexesOfEqualObjects:@1.0 inArray:self.array];
    NSArray *expectedArray = @[@2, @3];

    XCTAssertEqualObjects(resultArray, expectedArray);
}

#pragma mark - Floats (point to the same memory address)

- (void)testFloat {
    NSUInteger resultIndex = [LinearSearch indexOfEqualObject:@1.5 inArray:self.array];

    XCTAssert(resultIndex == 6);
}

- (void)testFloats {
    NSArray *resultArray = [LinearSearch indexesOfEqualObjects:@1.5 inArray:self.array];
    NSArray *expectedArray = @[@6, @7];

    XCTAssertEqualObjects(resultArray, expectedArray);
}

#pragma mark - Not Included

- (void)testNotIncludedObject {
    NSUInteger resultIndex = [LinearSearch indexOfEqualObject:@100 inArray:self.array];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNotIncludedObjects {
    NSArray *resultArray = [LinearSearch indexesOfEqualObjects:@100 inArray:self.array];

    XCTAssertEqualObjects(resultArray, @[]);
}

#pragma mark - Nil Search Object

- (void)testNilSearchObject {
    NSUInteger resultIndex = [LinearSearch indexOfEqualObject:nil inArray:self.array];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNilSearchObjects {
    NSArray *resultArray = [LinearSearch indexesOfEqualObjects:nil inArray:self.array];

    XCTAssertEqualObjects(resultArray, @[]);
}

#pragma mark - Nil Array

- (void)testNilArrayForObject {
    NSUInteger resultIndex = [LinearSearch indexOfEqualObject:@YES inArray:nil];

    XCTAssert(resultIndex == NSNotFound);
}

- (void)testNilArrayForObjects {
    NSArray *resultArray = [LinearSearch indexesOfEqualObjects:@YES inArray:nil];
    
    XCTAssertEqualObjects(resultArray, @[]);
}

@end
