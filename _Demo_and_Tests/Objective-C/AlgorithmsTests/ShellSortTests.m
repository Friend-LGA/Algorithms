//
//  ShellSortTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "ShellSort.h"
#import "TestsHelper.h"

@interface ShellSortTests : XCTestCase

@end

@implementation ShellSortTests

- (void)setUp {
    [super setUp];

    [TestsHelper reset];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark -

- (void)testAscOdd {
    NSArray *resultArray = [ShellSort sortedArray:TestsHelper.array order:ShellSortOrderAsc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayAsc);
}

- (void)testAscEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayAsc addObject:@100];

    NSArray *resultArray = [ShellSort sortedArray:TestsHelper.array order:ShellSortOrderAsc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayAsc);
}

- (void)testDescOdd {
    NSArray *resultArray = [ShellSort sortedArray:TestsHelper.array order:ShellSortOrderDesc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayDesc);
}

- (void)testDescEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayDesc insertObject:@100 atIndex:0];

    NSArray *resultArray = [ShellSort sortedArray:TestsHelper.array order:ShellSortOrderDesc];

    XCTAssertEqualObjects(resultArray, TestsHelper.sortedArrayDesc);
}

- (void)testNilArray {
    NSArray *resultArray = [ShellSort sortedArray:nil order:ShellSortOrderAsc];

    XCTAssert(resultArray == nil);
}

- (void)testEmptyArray {
    NSArray *resultArray = [ShellSort sortedArray:@[] order:ShellSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[]);
}

- (void)testArrayWithOneNumber {
    NSArray *resultArray = [ShellSort sortedArray:@[@0] order:ShellSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[@0]);
}

@end
