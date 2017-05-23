//
//  BinarySearchInPlaceTests.swift
//  Algorithms
//

import XCTest

class BinarySearchInPlaceTests: XCTestCase {

    let array = [-1.5, -1, -0.5, 0, 0.5, 1, 1.5]

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testCase1() {
        let result = BinarySearch.index(of: -1.5, inSortedArray: array, inPlace: true)

        XCTAssert(result == 0)
    }

    func testCase2() {
        let result = BinarySearch.index(of: -1, inSortedArray: array, inPlace: true)

        XCTAssert(result == 1)
    }

    func testCase3() {
        let result = BinarySearch.index(of: -0.5, inSortedArray: array, inPlace: true)

        XCTAssert(result == 2)
    }

    func testCase4() {
        let result = BinarySearch.index(of: 0, inSortedArray: array, inPlace: true)

        XCTAssert(result == 3)
    }

    func testCase5() {
        let result = BinarySearch.index(of: 0.5, inSortedArray: array, inPlace: true)

        XCTAssert(result == 4)
    }

    func testCase6() {
        let result = BinarySearch.index(of: 1, inSortedArray: array, inPlace: true)

        XCTAssert(result == 5)
    }

    func testCase7() {
        let result = BinarySearch.index(of: 1.5, inSortedArray: array, inPlace: true)

        XCTAssert(result == 6)
    }

    func testNotIncluded() {
        let result = BinarySearch.index(of: 100, inSortedArray: array, inPlace: true)

        XCTAssert(result == nil)
    }

    func testNilSearchNumber() {
        let result = BinarySearch.index(of: nil, inSortedArray: array, inPlace: true)

        XCTAssert(result == nil)
    }

    func testNilArray() {
        let result = BinarySearch.index(of: 0, inSortedArray: nil, inPlace: true)

        XCTAssert(result == nil)
    }

    func testEmptyArray() {
        let result = BinarySearch.index(of: 0, inSortedArray: [], inPlace: true)

        XCTAssert(result == nil)
    }

    func testArrayWithOneNumberIncluded() {
        let result = BinarySearch.index(of: 0, inSortedArray: [0], inPlace: true)

        XCTAssert(result == 0)
    }

    func testArrayWithOneNumberNotIncluded() {
        let result = BinarySearch.index(of: 100, inSortedArray: [0], inPlace: true)

        XCTAssert(result == nil)
    }

}
