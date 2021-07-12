//
//  Numeric+Separation.swift
//  
//
//  Created by MohammadReza Ansary on 3/14/21.
//

import Foundation

public protocol Separation {
    static var separationFormatter: NumberFormatter { get }
    func separated() -> String
}

// MARK: - Numerical types of supported Separation
extension Int: Separation {}
extension Double: Separation {}
extension NSNumber: Separation {}

// MARK: - Implementation
public extension Int {
    static let separationFormatter = NumberFormatter()
}

public extension Double {
    static let separationFormatter = NumberFormatter()
}

public extension NSNumber {
    static let separationFormatter = NumberFormatter()
}
    
public extension Separation {
    
    /**
     A separated form of a number as a string.
     
     * Used NumberFormatter with `maximumFractionDigits = 8`.
     * Used NumberFormatter with `numberStyle = .decimal`.
     
     - Returns: A separated formatted string.
     - Warning: Be aware of number formatter performance cost.
     */
    func separated() -> String {
        Self.separationFormatter.numberStyle = .decimal
        Self.separationFormatter.maximumFractionDigits = 8
        Self.separationFormatter.roundingMode = .down
        let formatted = Self.separationFormatter.string(for: self)
        return formatted ?? "\(self)"
    }
}
