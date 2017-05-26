//
//  BidirectionalBubbleSortTests.swift
//  Algorithms
//

import XCTest

class BidirectionalBubbleSortTests: XCTestCase {

    override func setUp() {
        super.setUp()

        TestsHelper.clearArrays()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: -

    func testAscOdd() {
        let result = BidirectionalBubbleSort.sort(TestsHelper.array, order: .ASC)

        XCTAssert(result ?= TestsHelper.sortedArrayAsc)
    }

    func testAscEven() {
        TestsHelper.array.append(100)
        TestsHelper.sortedArrayAsc.append(100)

        let result = BidirectionalBubbleSort.sort(TestsHelper.array, order: .ASC)

        XCTAssert(result ?= TestsHelper.sortedArrayAsc)
    }

    func testDescOdd() {
        let result = BidirectionalBubbleSort.sort(TestsHelper.array, order: .DESC)

        XCTAssert(result ?= TestsHelper.sortedArrayDesc)
    }

    func testDescEven() {
        TestsHelper.array.append(100)
        TestsHelper.sortedArrayDesc.insert(100, at: 0)

        let result = BidirectionalBubbleSort.sort(TestsHelper.array, order: .DESC)

        XCTAssert(result ?= TestsHelper.sortedArrayDesc)
    }

    func testNilArray() {
        let nilArray: [Int]? = nil
        let result = BidirectionalBubbleSort.sort(nilArray, order: .ASC)

        XCTAssert(result == nil);
    }

    func testEmptyArray() {
        let result = BidirectionalBubbleSort.sort([] as [Int], order: .ASC)

        XCTAssert(result ?= []);
    }
    
    func testArrayWithOneNumber() {
        let result = BidirectionalBubbleSort.sort([0], order: .ASC)
        
        XCTAssert(result ?= [0]);
    }
    
}
