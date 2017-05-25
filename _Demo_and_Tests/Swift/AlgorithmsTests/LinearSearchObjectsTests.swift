//
//  LinearSearchObjectsTests.swift
//  Algorithms
//

import XCTest

class LinearSearchObjectsTests: XCTestCase {

    lazy var objectsArray: [AnyObject] = [NSNumber.init(value: -1), NSNumber.init(value: 0), NSNumber.init(value: 1), NSNumber.init(value: 1),
                                          NSNumber.init(value: -1.5), NSNumber.init(value: 0.5), NSNumber.init(value: 1.5), NSNumber.init(value: 1.5)]

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Integers (point to the same memory adress)

    func testIntegerFirst() {
        let result = LinearSearch.index(ofObject: objectsArray[2], in: objectsArray)

        XCTAssert(result == 2)
    }

    func testIntegerSecond() {
        let result = LinearSearch.index(ofObject: objectsArray[3], in: objectsArray)

        XCTAssert(result == 2)
    }

    func testIntegers() {
        let result = LinearSearch.indexes(ofObject: objectsArray[2], in: objectsArray)

        XCTAssert(result == [2, 3])
    }

    // MARK: - Floats

    func testFloatFirst() {
        let result = LinearSearch.index(ofObject: objectsArray[6], in: objectsArray)

        XCTAssert(result == 6)
    }

    func testFloatSecond() {
        let result = LinearSearch.index(ofObject: objectsArray[7], in: objectsArray)

        XCTAssert(result == 7)
    }

    func testFloats() {
        let result = LinearSearch.indexes(ofObject: objectsArray[6], in: objectsArray)
        
        XCTAssert(result == [6])
    }

    // MARK: - Not Included

    func testNotIncludedObject() {
        let result = LinearSearch.index(ofObject: NSNumber.init(value: 100), in: objectsArray)

        XCTAssert(result == nil)
    }

    func testNotIncludedObjects() {
        let result = LinearSearch.indexes(ofObject: NSNumber.init(value: 100), in: objectsArray)

        XCTAssert(result == [])
    }

    // MARK: - Nil Search Object

    func testNilSearchObject() {
        let result = LinearSearch.index(ofObject: nil, in: objectsArray)

        XCTAssert(result == nil)
    }

    func testNilSearchObjects() {
        let result = LinearSearch.indexes(ofObject: nil, in: objectsArray)

        XCTAssert(result == [])
    }

    // MARK: - Nil Array

    func testNilArrayForObject() {
        let result = LinearSearch.index(ofObject: NSNumber.init(value: true), in: nil)

        XCTAssert(result == nil)
    }

    func testNilArrayForObjects() {
        let result = LinearSearch.indexes(ofObject: NSNumber.init(value: true), in: nil)

        XCTAssert(result == [])
    }

}
