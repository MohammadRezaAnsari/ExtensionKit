//
//  Numeric+Localization.swift
//  
//
//  Created by MohammadReza Ansary on 3/14/21.
//

import Foundation

public protocol Localization {
    func localizedString(with locale: String, formatter: NumberFormatter) throws -> String
    func localizedString(with locale: String) throws -> String
}

// MARK: - Numerical types of supported Localization
extension NSNumber: Localization {}
extension Int: Localization {}
extension Double: Localization {}

// MARK: - Implementation
public extension Localization {
    
    /**
     A localized form of a number as string.
     
     - Parameters:
        - locale: A locale identifier as string.
        - formatter: An Instance of number formatter with configured setup.
     
     - Throws: `MachErrorCode.invalidValue` If formatter string returns `nil`.
     - Returns: A localized formatted string.
     - Warning: Be aware of number formatter performance cost.
     */
    func localizedString(with locale: String, formatter: NumberFormatter) throws -> String {
        formatter.locale = Locale(identifier: locale)
        guard let number = formatter.string(for: self) else { throw MachError(MachErrorCode.invalidValue) }
        return number
    }
    
    /**
     A localized form of a number as string.
     
     * Used NumberFormatter with `maximumFractionDigits = 8`.
     * Used NumberFormatter with `numberStyle = .decimal`.
     
     - Parameters:
        - locale: A locale identifier as string.
     
     - Throws: `MachErrorCode.invalidValue` If formatter string returns `nil`.
     - Returns: A localized formatted string.
     - Warning: Be aware of number formatter performance cost.
     */
    func localizedString(with locale: String) throws -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 8
        formatter.locale = Locale(identifier: locale)
        return try localizedString(with: locale, formatter: formatter)
    }
}
