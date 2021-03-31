//
//  Numeric+Abbreviation.swift
//  
//
//  Created by MohammadReza Ansary on 3/15/21.
//

import Foundation

public protocol Abbreviating {
    func abbreviated() -> String
}

// MARK: - Numerical types of supported Abbreviations
extension Int: Abbreviating {}
extension Double: Abbreviating {}
extension NSNumber: Abbreviating {}

// MARK: - Implementation
public extension Abbreviating {
    
    /**
     A short form of a number.
     
     Abbreviation using BIPM specifies prefixes for the International System of Units (SI).
     
     * Used NumberFormatter with `maximumFractionDigits = 1`.
     * Used NumberFormatter with `roundingMode = .down`.
     * Used NumberFormatter with `usesGroupingSeparator = false`.
     
     ## System of Units ##
     ````
     1. yotta | Y | 10^24 | 1000000000000000000000000 |  septillion
     2. zetta | Z | 10^21 | 1000000000000000000000    |  sextillion
     3. exa   | E | 10^18 | 1000000000000000000       |  quintillion
     4. peta  | P | 10^15 | 1000000000000000          |  quadrillion
     5. tera  | T | 10^12 | 1000000000000             |  trillion
     6. giga  | G | 10^9  | 1000000000                |  billion
     7. mega  | M | 10^6  | 1000000                   |  million
     8. kilo  | K | 10^3  | 1000                      |  thousand
     ````
     */
    func abbreviated() -> String {
        
        let metricPrefixes = ["K","M","G","T","P","E","Z","Y"]
        
        guard let input: NSNumber = self as? NSNumber else { return  "NaN" }
        let number = input.doubleValue
        
        guard !number.isNaN else { return "NaN" }
        guard !number.isInfinite else { return "\(number < 0.0 ? "-" : "+") Infinity" }
        guard input.doubleValue >= 1000 else { return "\(input)" }
        
        let sign = ((number < 0) ? "-" : "" )
        let absolute = fabs(number)
        
        let index = Int(log10(absolute) / 3.0)
        if metricPrefixes.count < index { return "Unsupported Number" }
        
        let roundedNumber = absolute / pow(1000.0,Double(index))
        let formattedNumber = formattedAbbreviation(roundedNumber)
        return "\(sign)\(formattedNumber)\(metricPrefixes[index-1])"
    }
    
    private func formattedAbbreviation(_ number: Double) -> String {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 1
        formatter.roundingMode = .down
        formatter.usesGroupingSeparator = false
        return formatter.string(from: NSNumber(value: number))!
    }
}
