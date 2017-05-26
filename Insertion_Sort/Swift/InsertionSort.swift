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

        var result = array!

        for i in 1..<arrayCount {
            let current = result[i]

            for index in stride(from: i, to: 0, by: -1) {
                let prevIndex = index - 1
                let prev = result[prevIndex]

                if (order == .ASC && ((prev != nil && current == nil) || (prev != nil && current != nil && prev! > current!))) ||
                    (order == .DESC && ((prev == nil && current != nil) || (prev != nil && current != nil && prev! < current!))) {
                    swap(&result[prevIndex], &result[index])
                }
            }
        }

        return result;
    }

}
