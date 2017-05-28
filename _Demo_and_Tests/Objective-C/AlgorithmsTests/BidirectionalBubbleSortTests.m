//
//  BidirectionalBubbleSortTests.m
//  Algorithms
//

#import <XCTest/XCTest.h>
#import "BidirectionalBubbleSort.h"
#import "TestsHelper.h"

@interface BidirectionalBubbleSortTests : XCTestCase

@end

@implementation BidirectionalBubbleSortTests

- (void)setUp {
    [super setUp];

    [TestsHelper reset];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark -

- (void)testAscOdd {
    [BidirectionalBubbleSort sort:TestsHelper.array order:BidirectionalBubbleSortOrderAsc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayAsc);
}

- (void)testAscEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayAsc addObject:@100];

    [BidirectionalBubbleSort sort:TestsHelper.array order:BidirectionalBubbleSortOrderAsc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayAsc);
}

- (void)testDescOdd {
    [BidirectionalBubbleSort sort:TestsHelper.array order:BidirectionalBubbleSortOrderDesc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayDesc);
}

- (void)testDescEven {
    [TestsHelper.array addObject:@100];
    [TestsHelper.sortedArrayDesc insertObject:@100 atIndex:0];

    [BidirectionalBubbleSort sort:TestsHelper.array order:BidirectionalBubbleSortOrderDesc];

    XCTAssertEqualObjects(TestsHelper.array, TestsHelper.sortedArrayDesc);
}

- (void)testNilArray {
    NSMutableArray *resultArray = nil;

    [BidirectionalBubbleSort sort:resultArray order:BidirectionalBubbleSortOrderAsc];

    XCTAssert(resultArray == nil);
}

- (void)testEmptyArray {
    NSMutableArray *resultArray = [NSMutableArray new];

    [BidirectionalBubbleSort sort:resultArray order:BidirectionalBubbleSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[]);
}

- (void)testArrayWithOneNumber {
    NSMutableArray *resultArray = [NSMutableArray arrayWithObject:@0];

    [BidirectionalBubbleSort sort:resultArray order:BidirectionalBubbleSortOrderAsc];

    XCTAssertEqualObjects(resultArray, @[@0]);
}

@end
