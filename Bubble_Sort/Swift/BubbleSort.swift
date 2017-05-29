//
//  BubbleSort.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct BubbleSort {

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

        for i in stride(from: arrayCount, to: 0, by: -1) {
            for j in 0..<(i - 1) {
                let currentValue = resultArray[j]
                let nextIndex = j + 1
                let nextValue = resultArray[nextIndex]

                if (order == .ASC && ((currentValue != nil && nextValue == nil) || (currentValue != nil && nextValue != nil && currentValue! > nextValue!))) ||
                    (order == .DESC && ((currentValue == nil && nextValue != nil) || (currentValue != nil && nextValue != nil && currentValue! < nextValue!))) {
                    swap(&resultArray[j], &resultArray[nextIndex])
                }
            }
        }

        return resultArray;
    }

}
