//
//  QuickSort.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct QuickSort {

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

        let pivotIndex = Int(arc4random()) % arrayCount
        let pivotNumber = array![pivotIndex]

        var lessArray: [T?] = []
        var equalArray: [T?] = []
        var greaterArray: [T?] = []

        for number in array! {
            if (number == nil && pivotNumber != nil) || (number != nil && pivotNumber != nil && number! < pivotNumber!) {
                lessArray.append(number)
            }
            else if (number == nil && pivotNumber == nil) || (number != nil && pivotNumber != nil && number! == pivotNumber!) {
                equalArray.append(number)
            }
            else {
                greaterArray.append(number)
            }
        }

        let lessSortedArray = sort(lessArray, order: order)
        let greaterSortedArray = sort(greaterArray, order: order)

        return merge(lessSortedArray!, equalArray, greaterSortedArray!, order: order)
    }

    static private func merge<T: Comparable>(_ lessArray: [T?], _ equalArray: [T?], _ greaterArray: [T?], order: SortOrder) -> [T?] {
        var resultArray: [T?] = []

        if order == .ASC {
            resultArray.append(contentsOf: lessArray)
            resultArray.append(contentsOf: equalArray)
            resultArray.append(contentsOf: greaterArray)
        }
        else {
            resultArray.append(contentsOf: greaterArray)
            resultArray.append(contentsOf: equalArray)
            resultArray.append(contentsOf: lessArray)
        }

        return resultArray
    }

}
