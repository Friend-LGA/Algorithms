//
//  LinearSearch.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct LinearSearch {

    static func index<T: Equatable>(of value: T?, in array: [T?]?) -> UInt? {
        if value == nil || array == nil {
            return nil
        }

        for i in 0..<array!.count {
            if value == array![i] {
                return UInt(i)
            }
        }

        return nil
    }

    static func indexes<T: Equatable>(of value: T?, in array: [T?]?) -> [UInt] {
        if value == nil || array == nil {
            return []
        }

        var result: [UInt] = []

        for i in 0..<array!.count {
            if value == array![i] {
                result.append(UInt(i))
            }
        }

        return result
    }

    // MARK: - Objects

    static func index(ofObject object: AnyObject?, in array: [AnyObject?]?) -> UInt? {
        if object == nil || array == nil {
            return nil
        }

        for i in 0..<array!.count {
            if object === array![i] {
                return UInt(i);
            }
        }

        return nil
    }

    static func indexes(ofObject object: AnyObject?, in array: [AnyObject?]?) -> [UInt] {
        if object == nil || array == nil {
            return []
        }

        var result: [UInt] = []

        for i in 0..<array!.count {
            if object === array![i] {
                result.append(UInt(i))
            }
        }

        return result
    }

    // MARK: - Equal Objects

    static func index(ofEqualObject object: AnyObject?, in array: [AnyObject?]?) -> UInt? {
        if object == nil || array == nil {
            return nil
        }

        for i in 0..<array!.count {
            if object!.isEqual(to: array![i]) {
                return UInt(i);
            }
        }

        return nil
    }

    static func indexes(ofEqualObject object: AnyObject?, in array: [AnyObject?]?) -> [UInt] {
        if object == nil || array == nil {
            return []
        }

        var result: [UInt] = []

        for i in 0..<array!.count {
            if object!.isEqual(to: array![i]) {
                result.append(UInt(i))
            }
        }
        
        return result
    }

}
