//
//  InsertionSortTests.swift
//  Algorithms
//

import XCTest

class InsertionSortTests: XCTestCase {

    override func setUp() {
        super.setUp()

        TestsHelper.reset()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: -

    func testAscOdd() {
        let result = InsertionSort.sort(TestsHelper.array, order: .ASC)

        XCTAssert(result ?= TestsHelper.sortedArrayAsc)
    }

    func testAscEven() {
        TestsHelper.array.append(100)
        TestsHelper.sortedArrayAsc.append(100)

        let result = InsertionSort.sort(TestsHelper.array, order: .ASC)

        XCTAssert(result ?= TestsHelper.sortedArrayAsc)
    }

    func testDescOdd() {
        let result = InsertionSort.sort(TestsHelper.array, order: .DESC)

        XCTAssert(result ?= TestsHelper.sortedArrayDesc)
    }

    func testDescEven() {
        TestsHelper.array.append(100)
        TestsHelper.sortedArrayDesc.insert(100, at: 0)

        let result = InsertionSort.sort(TestsHelper.array, order: .DESC)

        XCTAssert(result ?= TestsHelper.sortedArrayDesc)
    }

    func testNilArray() {
        let nilArray: [Int]? = nil
        let result = InsertionSort.sort(nilArray, order: .ASC)

        XCTAssert(result == nil);
    }

    func testEmptyArray() {
        let result = InsertionSort.sort([] as [Int], order: .ASC)

        XCTAssert(result ?= []);
    }

    func testArrayWithOneNumber() {
        let result = InsertionSort.sort([0], order: .ASC)
        
        XCTAssert(result ?= [0]);
    }

}
