//
//  UIColor+Int.swift
//
//
//  Created by MohammadReza Ansary on 2/27/21.
//

import UIKit

public extension UIColor {
    
    /// Creates a color object using the specified opacity and RGB component values.
    /// - Parameters:
    ///   - red: The red value of the color object. On applications linked for iOS 10 or later, the color is specified in an extended color space, and the input value is never clamped. On earlier versions of iOS, red values below 0.0 are interpreted as 0.0, and values above 1.0 are interpreted as 1.0.
    ///   - green: The green value of the color object. On applications linked for iOS 10 or later, the color is specified in an extended color space, and the input value is never clamped. On earlier versions of iOS, green values below 0.0 are interpreted as 0.0, and values above 1.0 are interpreted as 1.0.
    ///   - blue: The blue value of the color object. On applications linked for iOS 10 or later, the color is specified in an extended color space, and the input value is never clamped. On earlier versions of iOS, blue values below 0.0 are interpreted as 0.0, and values above 1.0 are interpreted as 1.0.
    ///   - alpha: The opacity value of the color object, specified as a value from 0.0 to 1.0. Alpha values below 0.0 are interpreted as 0.0, and values above 1.0 are interpreted as 1.0.
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        self.init(red: red.cgFloat / 255.0, green: green.cgFloat / 255.0, blue: blue.cgFloat / 255.0, alpha: alpha)
    }
}
