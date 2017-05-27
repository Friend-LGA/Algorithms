//
//  SelectionSort.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct SelectionSort {

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

        for i in 0..<(arrayCount - 1) {
            var selectedIndex = i
            var selected = result[selectedIndex]

            for index in (i + 1)..<arrayCount {
                let current = result[index]

                if (order == .ASC && ((selected != nil && current == nil) || (selected != nil && current != nil && current! < selected!))) ||
                    (order == .DESC && ((selected == nil && current != nil) || (selected != nil && current != nil && current! > selected!))) {
                        selectedIndex = index
                        selected = result[selectedIndex]
                }
            }

            if (selectedIndex != i) {
                swap(&result[i], &result[selectedIndex])
            }
        }

        return result;
    }

}
