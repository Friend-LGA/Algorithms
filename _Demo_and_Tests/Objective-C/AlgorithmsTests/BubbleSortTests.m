//
//  BubbleSortTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "BubbleSort.h"
#import "TestsHelper.h"

@interface BubbleSortTests : XCTestCase

@end

@implementation BubbleSortTests

- (void)setUp {
    [super setUp];

    [TestsHelper reset];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark -

- (void)testAscOdd {
    [BubbleSort sort:TestsHelper.array order:BubbleSortOrderAsc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayAsc);
}

- (void)testAscEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayAsc addObject:@100];

    [BubbleSort sort:TestsHelper.array order:BubbleSortOrderAsc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayAsc);
}

- (void)testDescOdd {
    [BubbleSort sort:TestsHelper.array order:BubbleSortOrderDesc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayDesc);
}

- (void)testDescEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayDesc insertObject:@100 atIndex:0];

    [BubbleSort sort:TestsHelper.array order:BubbleSortOrderDesc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayDesc);
}

- (void)testNilArray {
    NSMutableArray *resultArray = nil;

    [BubbleSort sort:resultArray order:BubbleSortOrderAsc];

    XCTAssert(resultArray == nil);
}

- (void)testEmptyArray {
    NSMutableArray *resultArray = [NSMutableArray new];

    [BubbleSort sort:resultArray order:BubbleSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[]);
}

- (void)testArrayWithOneNumber {
    NSMutableArray *resultArray = [NSMutableArray arrayWithObject:@0];

    [BubbleSort sort:resultArray order:BubbleSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[@0]);
}

@end
