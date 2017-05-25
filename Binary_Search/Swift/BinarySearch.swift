//
//  BinarySearch.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct BinarySearch {

    /** Complexity is O(log(n)), array must be sorted */
    static public func index<T: Comparable>(of value: T?, inSortedArray array: [T?]?, inPlace: Bool) -> UInt? {
        if value == nil || array == nil || array?.count == 0 {
            return nil
        }

        if inPlace {
            return inPlaceIndex(of: value!, inSortedArray: array!, range: 0..<UInt(array!.count))
        }
        else {
            return notInPlaceIndex(of: value!, inSortedArray: array!, indexOffset: 0)
        }
    }

    // MARK: - In Place

    static private func inPlaceIndex<T: Comparable>(of value: T, inSortedArray array: [T?], range: Range<UInt>) -> UInt? {
        if range.count == 0 {
            return nil
        }

        let rangeUpperBound = range.upperBound
        let middleIndex = (range.lowerBound + rangeUpperBound) / 2
        let middleValue = array[Int(middleIndex)]

        if middleValue == nil {
            return nil
        }

        if value == middleValue {
            return middleIndex
        }
        else if value < middleValue! {
            return inPlaceIndex(of: value, inSortedArray: array, range: 0..<middleIndex)
        }
        else {
            return inPlaceIndex(of: value, inSortedArray: array, range: (middleIndex + 1)..<rangeUpperBound)
        }
    }

    // MARK: - Not In Place

    static private func notInPlaceIndex<T: Comparable>(of value: T, inSortedArray array: [T?], indexOffset: UInt) -> UInt? {
        let arrayCount = array.count

        if arrayCount == 0 {
            return nil
        }

        let middleIndex = arrayCount / 2
        let middleValue = array[middleIndex]

        if middleValue == nil {
            return nil
        }

        if value == middleValue {
            return UInt(middleIndex) + indexOffset
        }
        else if value < middleValue! {
            return notInPlaceIndex(of: value, inSortedArray: Array(array[0..<middleIndex]), indexOffset: indexOffset)
        }
        else {
            let nextIndex = middleIndex + 1
            return notInPlaceIndex(of: value, inSortedArray: Array(array[nextIndex..<arrayCount]), indexOffset: indexOffset + UInt(nextIndex))
        }
    }

}
