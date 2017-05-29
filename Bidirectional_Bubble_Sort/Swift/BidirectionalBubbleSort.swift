//
//  BidirectionalBubbleSort.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct BidirectionalBubbleSort {

    enum SortOrder {
        case ASC
        case DESC
    }

    /** Complexity is O(n^2) */
    static public func sort<T: Comparable>(_ array: [T?]?, order: SortOrder) -> [T?]? {
        let arrayCount = array?.count ?? 0

        if arrayCount < 2 {
            return array
        }

        var resultArray = array!

        for i in 0...Int(ceil(Double(arrayCount) / 2.0)) {
            let lastIndex = arrayCount - i - 1

            for j in stride(from: i, to: lastIndex - 1, by: 1) {
                let currentValue = resultArray[j]
                let nextIndex = j + 1
                let nextValue = resultArray[nextIndex]

                if (order == .ASC && isShouldChangeForAsc(currentValue: currentValue, nextValue: nextValue)) ||
                    (order == .DESC && isShouldChangeForDesc(currentValue: currentValue, nextValue: nextValue)) {
                    swap(&resultArray[j], &resultArray[nextIndex])
                }
            }

            for j in stride(from: lastIndex, to: i, by: -1) {
                let currentValue = resultArray[j]
                let prevIndex = j - 1
                let prevValue = resultArray[prevIndex]

                if (order == .DESC && isShouldChangeForAsc(currentValue: currentValue, nextValue: prevValue)) ||
                    (order == .ASC && isShouldChangeForDesc(currentValue: currentValue, nextValue: prevValue)) {
                    swap(&resultArray[j], &resultArray[prevIndex])
                }
            }
        }

        return resultArray;
    }

    static private func isShouldChangeForAsc<T: Comparable>(currentValue: T?, nextValue: T?) -> Bool {
        return (currentValue != nil && nextValue == nil) || (currentValue != nil && nextValue != nil && currentValue! > nextValue!)
    }

    static private func isShouldChangeForDesc<T: Comparable>(currentValue: T?, nextValue: T?) -> Bool {
        return (currentValue == nil && nextValue != nil) || (currentValue != nil && nextValue != nil && currentValue! < nextValue!)
    }

}
