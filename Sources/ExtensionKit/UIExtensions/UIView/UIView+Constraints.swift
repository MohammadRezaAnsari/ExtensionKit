//
//  UIView+Constraint.swift
//  
//
//  Created by Ashkan Ghaderi on 5/9/21.
//

import UIKit
import Foundation

public extension UIView {
    
    func addConstarint(
        top: NSLayoutYAxisAnchor?,
        left: NSLayoutXAxisAnchor?,
        bottom: NSLayoutYAxisAnchor?,
        right: NSLayoutXAxisAnchor?,
        paddingTop: CGFloat,
        paddingLeft: CGFloat,
        paddingBottom: CGFloat,
        paddingRight: CGFloat,
        width: CGFloat,
        height: CGFloat)
    {
        translatesAutoresizingMaskIntoConstraints = false
        // Use the top parameter to set the 'top' constarint
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        // Use the left parameter to set the 'left' constarint
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        // Use the bottom parameter to set the 'bottom' constarint
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        // Use the right parameter to set the 'right' constarint
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        // Use the width parameter to set the 'width' constarint
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        // Use the height parameter to set the 'height' constarint
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
