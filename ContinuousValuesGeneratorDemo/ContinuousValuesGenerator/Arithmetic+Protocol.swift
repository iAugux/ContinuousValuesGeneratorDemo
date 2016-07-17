//
//  Arithmetic+Protocol.swift
//  PushUps
//
//  Created by Augus on 7/16/16.
//  Copyright © 2016 iAugus. All rights reserved.
//

import UIKit


// MARK: - Math

typealias Mathematical = Arithmetic

protocol Arithmetic: Comparable {
    
    var int: Int { get }
    var double: Double { get }
    var cgFloat: CGFloat { get }
    
    
    init(_ x: Int)
    init(_ x: Double)
    init(_ x: Float)
    init(_ x: CGFloat)

    
    prefix func -(x: Self) -> Self
    
    
    func +(lhs: Self, rhs: Self) -> Self
    
    func *(lhs: Self, rhs: Self) -> Self
    
    func -(lhs: Self, rhs: Self) -> Self
    
    func /(lhs: Self, rhs: Self) -> Self
    
    func %(lhs: Self, rhs: Self) -> Self
    
    
    func +=(lhs: inout Self, rhs: Self)
    
    func -=(lhs: inout Self, rhs: Self)
    
    func *=(lhs: inout Self, rhs: Self)
    
    func /=(lhs: inout Self, rhs: Self)
    
}


// MARK: - 

extension Int: Arithmetic {
    var int: Int { return Int(self) } // `Int()` is unnecessary here, but just for convenience
    var double: Double { return Double(self) }
    var cgFloat: CGFloat { return CGFloat(self) }
}

extension Int8 : Arithmetic {
    var int: Int { return Int(self) }
    var double: Double { return Double(self) }
    var cgFloat: CGFloat { return CGFloat(self) }
}

extension Int16 : Arithmetic {
    var int: Int { return Int(self) }
    var double: Double { return Double(self) }
    var cgFloat: CGFloat { return CGFloat(self) }
}

extension Int32 : Arithmetic {
    var int: Int { return Int(self) }
    var double: Double { return Double(self) }
    var cgFloat: CGFloat { return CGFloat(self) }
}

extension Int64 : Arithmetic {
    var int: Int { return Int(self) }
    var double: Double { return Double(self) }
    var cgFloat: CGFloat { return CGFloat(self) }
}

extension Float: Arithmetic {
    var int: Int { return Int(self) }
    var double: Double { return Double(self) }
    var cgFloat: CGFloat { return CGFloat(self) }
}

extension Double: Arithmetic {
    var int: Int { return Int(self) }
    var double: Double { return Double(self) } // `Double()` is unnecessary here, but just for convenience
    var cgFloat: CGFloat { return CGFloat(self) }
}

extension CGFloat: Arithmetic {
    var int: Int { return Int(self) }
    var double: Double { return Double(self) }
    var cgFloat: CGFloat { return CGFloat(self) } // `CGFloat()` is unnecessary here, but just for convenience
}


// MARK: -

func plus<T: Arithmetic>(a: T, b: T) -> T {
    return a + b
}

func minus<T: Arithmetic>(a: T, b: T) -> T {
    return a - b
}

func multiply<T: Arithmetic>(a: T, b: T) -> T {
    return a * b
}

func divide<T: Arithmetic>(a: T, b: T) -> T {
    return a / b
}
