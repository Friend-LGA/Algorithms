//
//  QuickSortTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "QuickSort.h"
#import "TestsHelper.h"

@interface QuickSortTests : XCTestCase

@end

@implementation QuickSortTests

- (void)setUp {
    [super setUp];

    [TestsHelper reset];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark -

- (void)testAscOdd {
    NSArray *resultArray = [QuickSort sortedArray:TestsHelper.array order:QuickSortOrderAsc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayAsc);
}

- (void)testAscEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayAsc addObject:@100];

    NSArray *resultArray = [QuickSort sortedArray:TestsHelper.array order:QuickSortOrderAsc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayAsc);
}

- (void)testDescOdd {
    NSArray *resultArray = [QuickSort sortedArray:TestsHelper.array order:QuickSortOrderDesc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayDesc);
}

- (void)testDescEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayDesc insertObject:@100 atIndex:0];

    NSArray *resultArray = [QuickSort sortedArray:TestsHelper.array order:QuickSortOrderDesc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayDesc);
}

- (void)testNilArray {
    NSArray *resultArray = [QuickSort sortedArray:nil order:QuickSortOrderAsc];

    XCTAssert(resultArray == nil);
}

- (void)testEmptyArray {
    NSArray *resultArray = [QuickSort sortedArray:@[] order:QuickSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[]);
}

- (void)testArrayWithOneNumber {
    NSArray *resultArray = [QuickSort sortedArray:@[@0] order:QuickSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[@0]);
}

@end
