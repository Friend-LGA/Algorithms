//
//  BubbleSortTests.swift
//  Algorithms
//

import XCTest

class BubbleSortTests: XCTestCase {

    override func setUp() {
        super.setUp()

        TestsHelper.reset()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: -

    func testAscOdd() {
        let resultArray = BubbleSort.sort(TestsHelper.array, order: .ASC)

        XCTAssert(resultArray ?= TestsHelper.sortedArrayAsc)
    }

    func testAscEven() {
        TestsHelper.array.append(100)
        TestsHelper.sortedArrayAsc.append(100)

        let resultArray = BubbleSort.sort(TestsHelper.array, order: .ASC)

        XCTAssert(resultArray ?= TestsHelper.sortedArrayAsc)
    }

    func testDescOdd() {
        let resultArray = BubbleSort.sort(TestsHelper.array, order: .DESC)

        XCTAssert(resultArray ?= TestsHelper.sortedArrayDesc)
    }

    func testDescEven() {
        TestsHelper.array.append(100)
        TestsHelper.sortedArrayDesc.insert(100, at: 0)

        let resultArray = BubbleSort.sort(TestsHelper.array, order: .DESC)

        XCTAssert(resultArray ?= TestsHelper.sortedArrayDesc)
    }

    func testNilArray() {
        let nilArray: [Int]? = nil
        let resultArray = BubbleSort.sort(nilArray, order: .ASC)

        XCTAssert(resultArray == nil);
    }

    func testEmptyArray() {
        let resultArray = BubbleSort.sort([] as [Int], order: .ASC)

        XCTAssert(resultArray ?= []);
    }

    func testArrayWithOneNumber() {
        let resultArray = BubbleSort.sort([0], order: .ASC)
        
        XCTAssert(resultArray ?= [0]);
    }

}
