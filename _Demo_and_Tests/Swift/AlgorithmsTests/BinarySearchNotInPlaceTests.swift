//
//  BinarySearchNotInPlaceTests.swift
//  Algorithms
//

import XCTest

class BinarySearchNotInPlaceTests: XCTestCase {

    lazy var array = [-1.5, -1, -0.5, 0, 0.5, 1, 1.5]

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    // MARK: -

    func testCase1() {
        let resultIndex = BinarySearch.index(of: -1.5, inSortedArray: array, inPlace: false)

        XCTAssert(resultIndex == 0)
    }

    func testCase2() {
        let resultIndex = BinarySearch.index(of: -1, inSortedArray: array, inPlace: false)

        XCTAssert(resultIndex == 1)
    }

    func testCase3() {
        let resultIndex = BinarySearch.index(of: -0.5, inSortedArray: array, inPlace: false)

        XCTAssert(resultIndex == 2)
    }

    func testCase4() {
        let resultIndex = BinarySearch.index(of: 0, inSortedArray: array, inPlace: false)

        XCTAssert(resultIndex == 3)
    }

    func testCase5() {
        let resultIndex = BinarySearch.index(of: 0.5, inSortedArray: array, inPlace: false)

        XCTAssert(resultIndex == 4)
    }

    func testCase6() {
        let resultIndex = BinarySearch.index(of: 1, inSortedArray: array, inPlace: false)

        XCTAssert(resultIndex == 5)
    }

    func testCase7() {
        let resultIndex = BinarySearch.index(of: 1.5, inSortedArray: array, inPlace: false)

        XCTAssert(resultIndex == 6)
    }

    func testNotIncluded() {
        let resultIndex = BinarySearch.index(of: 100, inSortedArray: array, inPlace: false)

        XCTAssert(resultIndex == nil)
    }

    func testNilSearchNumber() {
        let resultIndex = BinarySearch.index(of: nil, inSortedArray: array, inPlace: false)

        XCTAssert(resultIndex == nil)
    }

    func testNilArray() {
        let resultIndex = BinarySearch.index(of: 0, inSortedArray: nil, inPlace: false)

        XCTAssert(resultIndex == nil)
    }

    func testEmptyArray() {
        let resultIndex = BinarySearch.index(of: 0, inSortedArray: [], inPlace: false)

        XCTAssert(resultIndex == nil)
    }

    func testArrayWithOneNumberIncluded() {
        let resultIndex = BinarySearch.index(of: 0, inSortedArray: [0], inPlace: false)

        XCTAssert(resultIndex == 0)
    }

    func testArrayWithOneNumberNotIncluded() {
        let resultIndex = BinarySearch.index(of: 100, inSortedArray: [0], inPlace: false)

        XCTAssert(resultIndex == nil)
    }

}
