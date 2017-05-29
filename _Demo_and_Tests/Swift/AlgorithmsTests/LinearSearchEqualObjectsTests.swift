//
//  LinearSearchEqualObjectsTests.swift
//  Algorithms
//

import XCTest

class LinearSearchEqualObjectsTests: XCTestCase {

    lazy var objectsArray: [AnyObject] = [NSNumber.init(value: -1), NSNumber.init(value: 0), NSNumber.init(value: 1), NSNumber.init(value: 1),
                                          NSNumber.init(value: -1.5), NSNumber.init(value: 0.5), NSNumber.init(value: 1.5), NSNumber.init(value: 1.5)]

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Integers (point to the same memory adress)

    func testInteger() {
        let resultIndex = LinearSearch.index(ofEqualObject: NSNumber.init(value: 1), in: objectsArray)

        XCTAssert(resultIndex == 2)
    }

    func testIntegers() {
        let resultArray = LinearSearch.indexes(ofEqualObject: NSNumber.init(value: 1), in: objectsArray)

        XCTAssert(resultArray == [2, 3])
    }

    // MARK: - Floats

    func testFloat() {
        let resultIndex = LinearSearch.index(ofEqualObject: NSNumber.init(value: 1.5), in: objectsArray)

        XCTAssert(resultIndex == 6)
    }

    func testFloats() {
        let resultArray = LinearSearch.indexes(ofEqualObject: NSNumber.init(value: 1.5), in: objectsArray)

        XCTAssert(resultArray == [6, 7])
    }

    // MARK: - Not Included

    func testNotIncludedObject() {
        let resultIndex = LinearSearch.index(ofEqualObject: NSNumber.init(value: 100), in: objectsArray)

        XCTAssert(resultIndex == nil)
    }

    func testNotIncludedObjects() {
        let resultArray = LinearSearch.indexes(ofEqualObject: NSNumber.init(value: 100), in: objectsArray)

        XCTAssert(resultArray == [])
    }

    // MARK: - Nil Search Object

    func testNilSearchObject() {
        let resultIndex = LinearSearch.index(ofEqualObject: nil, in: objectsArray)

        XCTAssert(resultIndex == nil)
    }

    func testNilSearchObjects() {
        let resultArray = LinearSearch.indexes(ofEqualObject: nil, in: objectsArray)

        XCTAssert(resultArray == [])
    }

    // MARK: - Nil Array

    func testNilArrayForObject() {
        let resultIndex = LinearSearch.index(ofEqualObject: NSNumber.init(value: true), in: nil)

        XCTAssert(resultIndex == nil)
    }

    func testNilArrayForObjects() {
        let resultArray = LinearSearch.indexes(ofEqualObject: NSNumber.init(value: true), in: nil)
        
        XCTAssert(resultArray == [])
    }

}
