//
//  BinarySearch.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct BinarySearch {

    static func index<T: Comparable>(of number: T?, inSortedArray array: [T?]?, inPlace: Bool) -> UInt? {
        if number == nil || array == nil || array?.count == 0 {
            return nil
        }

        if inPlace {
            return inPlaceIndex(of: number!, inSortedArray: array!, range: 0..<UInt(array!.count))
        }
        else {
            return notInPlaceIndex(of: number!, inSortedArray: array!, indexOffset: 0)
        }
    }

    // MARK: - In Place

    static private func inPlaceIndex<T: Comparable>(of number: T, inSortedArray array: [T?], range: Range<UInt>) -> UInt? {
        if range.count == 0 {
            return nil
        }

        let rangeUpperBound = range.upperBound
        let middleIndex = (range.lowerBound + rangeUpperBound) / 2
        let middleNumber = array[Int(middleIndex)]

        if middleNumber == nil {
            return nil
        }

        if number == middleNumber {
            return middleIndex
        }
        else if number < middleNumber! {
            return inPlaceIndex(of: number, inSortedArray: array, range: 0..<middleIndex)
        }
        else {
            return inPlaceIndex(of: number, inSortedArray: array, range: (middleIndex + 1)..<rangeUpperBound)
        }
    }

    // MARK: - Not In Place

    static private func notInPlaceIndex<T: Comparable>(of number: T, inSortedArray array: [T?], indexOffset: UInt) -> UInt? {
        let arrayCount = array.count

        if arrayCount == 0 {
            return nil
        }

        let middleIndex = arrayCount / 2
        let middleNumber = array[middleIndex]

        if middleNumber == nil {
            return nil
        }

        if number == middleNumber {
            return UInt(middleIndex) + indexOffset
        }
        else if number < middleNumber! {
            return notInPlaceIndex(of: number, inSortedArray: Array(array[0..<middleIndex]), indexOffset: indexOffset)
        }
        else {
            let nextIndex = middleIndex + 1
            return notInPlaceIndex(of: number, inSortedArray: Array(array[nextIndex..<arrayCount]), indexOffset: indexOffset + UInt(nextIndex))
        }
    }

}
