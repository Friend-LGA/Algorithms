//
//  TestsHelper.swift
//  Algorithms
//

import Foundation

struct TestsHelper {

    static private var _array: [Double?] = []
    static var array: [Double?] {
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

    static private var _sortedArrayAsc: [Double?] = []
    static var sortedArrayAsc: [Double?] {
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

    static private var _sortedArrayDesc: [Double?] = []
    static var sortedArrayDesc: [Double?] {
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

    static public func reset() {
        array.removeAll()
        sortedArrayAsc.removeAll()
        sortedArrayDesc.removeAll()
    }

}
