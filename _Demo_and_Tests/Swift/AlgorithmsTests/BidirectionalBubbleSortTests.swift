//
//  BidirectionalBubbleSortTests.swift
//  Algorithms
//

import XCTest

class BidirectionalBubbleSortTests: XCTestCase {

    private var _array: [Double?] = []
    var array: [Double?] {
        get {
            if _array.isEmpty {
                _array = [84, 48, -16, 1.24, nil, -52, 0, 32, -77.12, nil, 0, 37, -77.12]
            }

            return _array
        }
        set {
            _array = newValue
        }
    }

    private var _sortedArrayAsc: [Double?] = []
    var sortedArrayAsc: [Double?] {
        get {
            if _sortedArrayAsc.isEmpty {
                _sortedArrayAsc = [nil, nil, -77.12, -77.12, -52, -16, 0, 0, 1.24, 32, 37, 48, 84]
            }

            return _sortedArrayAsc
        }
        set {
            _sortedArrayAsc = newValue
        }
    }

    private var _sortedArrayDesc: [Double?] = []
    var sortedArrayDesc: [Double?] {
        get {
            if _sortedArrayDesc.isEmpty {
                _sortedArrayDesc = [84, 48, 37, 32, 1.24, 0, 0, -16, -52, -77.12, -77.12, nil, nil]
            }

            return _sortedArrayDesc
        }
        set {
            _sortedArrayDesc = newValue
        }
    }

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        array.removeAll()
        sortedArrayAsc.removeAll()
        sortedArrayDesc.removeAll()

        super.tearDown()
    }

    // MARK: -

    func testAscOdd() {
        let result = BidirectionalBubbleSort.sort(array, order: .ASC)

        XCTAssert(result ?= sortedArrayAsc)
    }

    func testAscEven() {
        array.append(100)
        sortedArrayAsc.append(100)

        let result = BidirectionalBubbleSort.sort(array, order: .ASC)

        XCTAssert(result ?= sortedArrayAsc)
    }

    func testDescOdd() {
        let result = BidirectionalBubbleSort.sort(array, order: .DESC)

        XCTAssert(result ?= sortedArrayDesc)
    }

    func testDescEven() {
        array.append(100)
        sortedArrayDesc.insert(100, at: 0)

        let result = BidirectionalBubbleSort.sort(array, order: .DESC)

        XCTAssert(result ?= sortedArrayDesc)
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
