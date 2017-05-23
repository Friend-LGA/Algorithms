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
        let result = LinearSearch.index(of: 1, in: [-1, 0, 1, 1])

        XCTAssert(result == 2)
    }

    func testIntegers() {
        let result = LinearSearch.indexes(of: 1, in: [-1, 0, 1, 1])

        XCTAssert(result == [2, 3])
    }

    // MARK: - Floats

    func testFloat() {
        let result = LinearSearch.index(of: 1.5, in: [-1.5, 0.5, 1.5, 1.5])

        XCTAssert(result == 2)
    }

    func testFloats() {
        let result = LinearSearch.indexes(of: 1.5, in: [-1.5, 0.5, 1.5, 1.5])

        XCTAssert(result == [2, 3])
    }

    // MARK: - Not Included

    func testNotIncluded() {
        let result = LinearSearch.index(of: 100, in: [-1, 0, 1, 1])

        XCTAssert(result == nil)
    }

    // MARK: - Nil Search Value

    func testNilSearchValue() {
        let result = LinearSearch.index(of: nil, in: [-1, 0, 1, 1])

        XCTAssert(result == nil)
    }

    // MARK: - Nil Array

    func testNilArray() {
        let result = LinearSearch.index(of: true, in: nil)

        XCTAssert(result == nil)
    }

}
