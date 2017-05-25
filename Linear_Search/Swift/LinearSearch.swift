//
//  LinearSearch.swift
//  Algorithms
//
//  Copyright © 2017 Grigory Lutkov <Friend.LGA@gmail.com>
//

import Foundation

struct LinearSearch {

    /** Complexity is O(n) */
    static public func index<T: Equatable>(of value: T?, in array: [T?]?) -> UInt? {
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

    /** Complexity is O(n) */
    static public func indexes<T: Equatable>(of value: T?, in array: [T?]?) -> [UInt] {
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

    /** Complexity is O(n) */
    static public func index(ofObject object: AnyObject?, in array: [AnyObject?]?) -> UInt? {
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

    /** Complexity is O(n) */
    static public func indexes(ofObject object: AnyObject?, in array: [AnyObject?]?) -> [UInt] {
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

    /** Complexity is O(n) */
    static public func index(ofEqualObject object: AnyObject?, in array: [AnyObject?]?) -> UInt? {
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

    /** Complexity is O(n) */
    static public func indexes(ofEqualObject object: AnyObject?, in array: [AnyObject?]?) -> [UInt] {
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
