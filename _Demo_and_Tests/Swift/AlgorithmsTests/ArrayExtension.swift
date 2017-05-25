//
//  ArrayExtension.swift
//  Algorithms
//
//  Created by Friend_LGA on 25.05.2017.
//  Copyright © 2017 Grigory Lutkov. All rights reserved.
//

import Foundation

infix operator ?=

func ?=<T: Equatable>(lhs: [T?]?, rhs: [T?]?) -> Bool {
    if lhs == nil && rhs == nil {
        return false
    }

    if lhs!.count != rhs!.count {
        return false
    }

    for i in 0..<lhs!.count {
        let left = lhs![i]
        let right = rhs![i]

        if left != nil && right == nil {
            return false
        }

        if left == nil && right != nil {
            return false
        }

        if left != right {
            return false
        }
    }

    return true;
}
