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

        var result = array!

        for i in stride(from: arrayCount, to: 0, by: -1) {
            for index in 0..<(i - 1) {
                let nextIndex = index + 1
                let current = result[index]
                let next = result[nextIndex]

                if (order == .ASC && ((current != nil && next == nil) || (current != nil && next != nil && current! > next!))) ||
                    (order == .DESC && ((current == nil && next != nil) || (current != nil && next != nil && current! < next!))) {
                    swap(&result[index], &result[nextIndex])
                }
            }
        }

        return result;
    }

}
