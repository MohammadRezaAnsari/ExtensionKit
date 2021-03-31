//
//  UIColor+Hex.swift
//
//
//  Created by MohammadReza Ansary on 2/27/21.
//

import UIKit

public extension UIColor {
    
    /// Creates a color object using the specified hex value.
    /// - Parameters:
    ///   - hex: A HEX color is expressed as a six-digit combination of numbers and letters defined by its mix of red, green and blue (RGB).
    ///   - alpha: The opacity value of the color object, specified as a value from 0.0 to 1.0. Alpha values below 0.0 are interpreted as 0.0, and values above 1.0 are interpreted as 1.0.
    convenience init(hex: String, alpha: CGFloat = 1.0) throws {
        
        var `hex` = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        do {
            let regularExpression = try NSRegularExpression(pattern: "^#?[0-9a-fA-F]{3,6}")
            guard hex.count < 8,
                  regularExpression.numberOfMatches(in: hex, range: NSMakeRange(0, hex.count)) == 1 else {
                throw MachError(MachError.invalidValue)
            }
            print(regularExpression)
        } catch { throw error }
        
        if (hex.hasPrefix("#")) { hex.remove(at: hex.startIndex) }
        if (hex.hasSuffix("#")) { throw MachError(MachError.invalidValue) }
        
        var hexInt: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&hexInt)
        
        let red: Int = Int((hexInt & 0xFF0000) >> 16)
        let green: Int = Int((hexInt & 0x00FF00) >> 8)
        let blue: Int = Int(hexInt & 0x0000FF)
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
