//
//  ShellSort.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct ShellSort {

    enum SortOrder {
        case ASC
        case DESC
    }

    /** Complexity is O(n * log(n)) */
    static public func sort<T: Comparable>(_ array: [T?]?, order: SortOrder) -> [T?]? {
        let arrayCount = array?.count ?? 0

        if arrayCount < 2 {
            return array
        }

        var resultArray = array!
        var gapSize = arrayCount / 2

        while gapSize >= 1 {
            for i in stride(from: gapSize, to: arrayCount, by: gapSize) {
                let currentValue = resultArray[i]

                for j in stride(from: i, to: 0, by: -gapSize) {
                    let prevIndex = j - gapSize
                    let prevValue = resultArray[prevIndex]

                    if (order == .ASC && ((prevValue != nil && currentValue == nil) || (prevValue != nil && currentValue != nil && prevValue! > currentValue!))) ||
                        (order == .DESC && ((prevValue == nil && currentValue != nil) || (prevValue != nil && currentValue != nil && prevValue! < currentValue!))) {
                        swap(&resultArray[prevIndex], &resultArray[j])
                    }
                }
            }

            gapSize /= 2
        }

        return resultArray
    }

}
