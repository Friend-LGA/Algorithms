//
//  LinearSearchTests.swift
//  AlgorithmsTests
//

import XCTest

class LinearSearchTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Integers
    
    func testInteger() {
        let resultIndex = LinearSearch.index(of: 1, in: [-1, 0, 1, 1])

        XCTAssert(resultIndex == 2)
    }

    func testIntegers() {
        let resultArray = LinearSearch.indexes(of: 1, in: [-1, 0, 1, 1])

        XCTAssert(resultArray == [2, 3])
    }

    // MARK: - Floats

    func testFloat() {
        let resultIndex = LinearSearch.index(of: 1.5, in: [-1.5, 0.5, 1.5, 1.5])

        XCTAssert(resultIndex == 2)
    }

    func testFloats() {
        let resultArray = LinearSearch.indexes(of: 1.5, in: [-1.5, 0.5, 1.5, 1.5])

        XCTAssert(resultArray == [2, 3])
    }

    // MARK: - Not Included

    func testNotIncluded() {
        let resultIndex = LinearSearch.index(of: 100, in: [-1, 0, 1, 1])

        XCTAssert(resultIndex == nil)
    }

    // MARK: - Nil Search Value

    func testNilSearchValue() {
        let resultIndex = LinearSearch.index(of: nil, in: [-1, 0, 1, 1])

        XCTAssert(resultIndex == nil)
    }

    // MARK: - Nil Array

    func testNilArray() {
        let resultIndex = LinearSearch.index(of: true, in: nil)

        XCTAssert(resultIndex == nil)
    }

}
