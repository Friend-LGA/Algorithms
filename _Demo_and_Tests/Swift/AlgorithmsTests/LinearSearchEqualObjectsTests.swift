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
        let result = LinearSearch.index(ofEqualObject: NSNumber.init(value: 1), in: objectsArray)

        XCTAssert(result == 2)
    }

    func testIntegers() {
        let result = LinearSearch.indexes(ofEqualObject: NSNumber.init(value: 1), in: objectsArray)

        XCTAssert(result == [2, 3])
    }

    // MARK: - Floats

    func testFloat() {
        let result = LinearSearch.index(ofEqualObject: NSNumber.init(value: 1.5), in: objectsArray)

        XCTAssert(result == 6)
    }

    func testFloats() {
        let result = LinearSearch.indexes(ofEqualObject: NSNumber.init(value: 1.5), in: objectsArray)

        XCTAssert(result == [6, 7])
    }

    // MARK: - Not Included

    func testNotIncludedObject() {
        let result = LinearSearch.index(ofEqualObject: NSNumber.init(value: 100), in: objectsArray)

        XCTAssert(result == nil)
    }

    func testNotIncludedObjects() {
        let result = LinearSearch.indexes(ofEqualObject: NSNumber.init(value: 100), in: objectsArray)

        XCTAssert(result == [])
    }

    // MARK: - Nil Search Object

    func testNilSearchObject() {
        let result = LinearSearch.index(ofEqualObject: nil, in: objectsArray)

        XCTAssert(result == nil)
    }

    func testNilSearchObjects() {
        let result = LinearSearch.indexes(ofEqualObject: nil, in: objectsArray)

        XCTAssert(result == [])
    }

    // MARK: - Nil Array

    func testNilArrayForObject() {
        let result = LinearSearch.index(ofEqualObject: NSNumber.init(value: true), in: nil)

        XCTAssert(result == nil)
    }

    func testNilArrayForObjects() {
        let result = LinearSearch.indexes(ofEqualObject: NSNumber.init(value: true), in: nil)
        
        XCTAssert(result == [])
    }

}
