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

        var resultArray = array!

        for i in 0..<(arrayCount - 1) {
            var selectedIndex = i
            var selectedValue = resultArray[selectedIndex]

            for j in (i + 1)..<arrayCount {
                let currentValue = resultArray[j]

                if (order == .ASC && ((selectedValue != nil && currentValue == nil) || (selectedValue != nil && currentValue != nil && currentValue! < selectedValue!))) ||
                    (order == .DESC && ((selectedValue == nil && currentValue != nil) || (selectedValue != nil && currentValue != nil && currentValue! > selectedValue!))) {
                        selectedIndex = j
                        selectedValue = resultArray[selectedIndex]
                }
            }

            if (selectedIndex != i) {
                swap(&resultArray[i], &resultArray[selectedIndex])
            }
        }

        return resultArray;
    }

}
