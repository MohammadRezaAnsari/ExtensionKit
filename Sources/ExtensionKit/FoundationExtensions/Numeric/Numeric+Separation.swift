//
//  Numeric+Separation.swift
//  
//
//  Created by MohammadReza Ansary on 3/14/21.
//

import Foundation

public protocol Separation {
    func separated() -> String
}

// MARK: - Numerical types of supported Separation
extension Int: Separation {}
extension Double: Separation {}
extension NSNumber: Separation {}

// MARK: - Implementation
public extension Separation {
    
    /**
     A separated form of a number as a string.
     
     * Used NumberFormatter with `maximumFractionDigits = 8`.
     * Used NumberFormatter with `numberStyle = .decimal`.
     
     - Returns: A separated formatted string.
     - Warning: Be aware of number formatter performance cost.
     */
    func separated() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 8
        formatter.roundingMode = .down
        let formatted = formatter.string(for: self)
        return formatted ?? "\(self)"
    }
}
