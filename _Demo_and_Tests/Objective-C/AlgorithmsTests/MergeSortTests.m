//
//  MergeSortTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "MergeSort.h"
#import "TestsHelper.h"

@interface MergeSortTests : XCTestCase

@end

@implementation MergeSortTests

- (void)setUp {
    [super setUp];

    [TestsHelper reset];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark -

- (void)testAscOdd {
    NSArray *resultArray = [MergeSort sortedArray:TestsHelper.array order:MergeSortOrderAsc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayAsc);
}

- (void)testAscEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayAsc addObject:@100];

    NSArray *resultArray = [MergeSort sortedArray:TestsHelper.array order:MergeSortOrderAsc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayAsc);
}

- (void)testDescOdd {
    NSArray *resultArray = [MergeSort sortedArray:TestsHelper.array order:MergeSortOrderDesc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayDesc);
}

- (void)testDescEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayDesc insertObject:@100 atIndex:0];

    NSArray *resultArray = [MergeSort sortedArray:TestsHelper.array order:MergeSortOrderDesc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayDesc);
}

- (void)testNilArray {
    NSArray *resultArray = [MergeSort sortedArray:nil order:MergeSortOrderAsc];

    XCTAssert(resultArray == nil);
}

- (void)testEmptyArray {
    NSArray *resultArray = [MergeSort sortedArray:@[] order:MergeSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[]);
}

- (void)testArrayWithOneNumber {
    NSArray *resultArray = [MergeSort sortedArray:@[@0] order:MergeSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[@0]);
}

@end
