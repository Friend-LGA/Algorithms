//
//  InsertionSort.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct InsertionSort {

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

        for i in 1..<arrayCount {
            let currentValue = resultArray[i]

            for j in stride(from: i, to: 0, by: -1) {
                let prevIndex = j - 1
                let prevValue = resultArray[prevIndex]

                if (order == .ASC && ((prevValue != nil && currentValue == nil) || (prevValue != nil && currentValue != nil && prevValue! > currentValue!))) ||
                    (order == .DESC && ((prevValue == nil && currentValue != nil) || (prevValue != nil && currentValue != nil && prevValue! < currentValue!))) {
                    swap(&resultArray[prevIndex], &resultArray[j])
                }
            }
        }

        return resultArray;
    }

}
