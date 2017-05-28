//
//  MergeSort.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct MergeSort {

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

        let middleIndex = arrayCount / 2

        let firstArray = sort(Array(array![0..<middleIndex]), order: order)
        let secondArray = sort(Array(array![middleIndex..<arrayCount]), order: order)

        return merge(firstArray!, secondArray!, order: order);
    }

    static private func merge<T: Comparable>(_ firstArray: [T?], _ secondArray: [T?], order: SortOrder) -> [T?] {
        let firstArrayCount = firstArray.count
        let secondArrayCount = secondArray.count

        var firstCounter = 0
        var secondCounter = 0
        var resultArray: [T?] = []

        while firstCounter < firstArrayCount || secondCounter < secondArrayCount {
            if firstCounter == firstArrayCount {
                resultArray.append(secondArray[secondCounter])
                secondCounter += 1
                continue
            }

            if secondCounter == secondArrayCount {
                resultArray.append(firstArray[firstCounter])
                firstCounter += 1
                continue
            }

            let firstNumber = firstArray[firstCounter]
            let secondNumber = secondArray[secondCounter]

            if firstNumber == secondNumber {
                resultArray.append(firstNumber)
                resultArray.append(secondNumber)
                firstCounter += 1
                secondCounter += 1
            }
            else if (order == .ASC && (firstNumber == nil || (firstNumber != nil && secondNumber != nil && firstNumber! < secondNumber!))) ||
                (order == .DESC && (secondNumber == nil || (firstNumber != nil && secondNumber != nil && firstNumber! > secondNumber!))) {
                resultArray.append(firstNumber)
                firstCounter += 1
            }
            else {
                resultArray.append(secondNumber)
                secondCounter += 1
            }
        }

        return resultArray
    }

}
