//
//  SelectionSortTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "SelectionSort.h"
#import "TestsHelper.h"

@interface SelectionSortTests : XCTestCase

@end

@implementation SelectionSortTests

- (void)setUp {
    [super setUp];

    [TestsHelper nullifyArrays];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark -

- (void)testAscOdd {
    [SelectionSort sort:TestsHelper.array order:SelectionSortOrderAsc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayAsc);
}

- (void)testAscEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayAsc addObject:@100];

    [SelectionSort sort:TestsHelper.array order:SelectionSortOrderAsc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayAsc);
}

- (void)testDescOdd {
    [SelectionSort sort:TestsHelper.array order:SelectionSortOrderDesc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayDesc);
}

- (void)testDescEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayDesc insertObject:@100 atIndex:0];

    [SelectionSort sort:TestsHelper.array order:SelectionSortOrderDesc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayDesc);
}

- (void)testNilArray {
    NSMutableArray *resultArray = nil;

    [SelectionSort sort:resultArray order:SelectionSortOrderAsc];

    XCTAssert(resultArray == nil);
}

- (void)testEmptyArray {
    NSMutableArray *resultArray = [NSMutableArray new];

    [SelectionSort sort:resultArray order:SelectionSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[]);
}

- (void)testArrayWithOneNumber {
    NSMutableArray *resultArray = [NSMutableArray arrayWithObject:@0];

    [SelectionSort sort:resultArray order:SelectionSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[@0]);
}

@end
