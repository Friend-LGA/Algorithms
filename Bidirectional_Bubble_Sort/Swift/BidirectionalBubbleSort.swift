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

        var result = array!

        for i in 0...Int(ceil(Double(arrayCount) / 2.0)) {
            let lastIndex = arrayCount - i - 1

            for index in stride(from: i, to: lastIndex - 1, by: 1) {
                let nextIndex = index + 1
                let current = result[index]
                let next = result[nextIndex]

                if (order == .ASC && isShouldChangeForAsc(current: current, next: next)) ||
                    (order == .DESC && isShouldChangeForDesc(current: current, next: next)) {
                    swap(&result[index], &result[nextIndex])
                }
            }

            for index in stride(from: lastIndex, to: i, by: -1) {
                let nextIndex = index - 1
                let current = result[index]
                let next = result[nextIndex]

                if (order == .DESC && isShouldChangeForAsc(current: current, next: next)) ||
                    (order == .ASC && isShouldChangeForDesc(current: current, next: next)) {
                    swap(&result[index], &result[nextIndex])
                }
            }
        }

        return result;
    }

    static private func isShouldChangeForAsc<T: Comparable>(current: T?, next: T?) -> Bool {
        return (current != nil && next == nil) || (current != nil && next != nil && current! > next!)
    }

    static private func isShouldChangeForDesc<T: Comparable>(current: T?, next: T?) -> Bool {
        return (current == nil && next != nil) || (current != nil && next != nil && current! < next!)
    }

}
