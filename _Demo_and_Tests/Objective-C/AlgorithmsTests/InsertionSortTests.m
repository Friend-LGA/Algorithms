//
//  InsertionSortTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "InsertionSort.h"
#import "TestsHelper.h"

@interface InsertionSortTests : XCTestCase

@end

@implementation InsertionSortTests

- (void)setUp {
    [super setUp];

    [TestsHelper reset];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark -

- (void)testAscOdd {
    [InsertionSort sort:TestsHelper.array order:InsertionSortOrderAsc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayAsc);
}

- (void)testAscEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayAsc addObject:@100];

    [InsertionSort sort:TestsHelper.array order:InsertionSortOrderAsc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayAsc);
}

- (void)testDescOdd {
    [InsertionSort sort:TestsHelper.array order:InsertionSortOrderDesc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayDesc);
}

- (void)testDescEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayDesc insertObject:@100 atIndex:0];

    [InsertionSort sort:TestsHelper.array order:InsertionSortOrderDesc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayDesc);
}

- (void)testNilArray {
    NSMutableArray *resultArray = nil;

    [InsertionSort sort:resultArray order:InsertionSortOrderAsc];

    XCTAssert(resultArray == nil);
}

- (void)testEmptyArray {
    NSMutableArray *resultArray = [NSMutableArray new];

    [InsertionSort sort:resultArray order:InsertionSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[]);
}

- (void)testArrayWithOneNumber {
    NSMutableArray *resultArray = [NSMutableArray arrayWithObject:@0];

    [InsertionSort sort:resultArray order:InsertionSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[@0]);
}

@end
