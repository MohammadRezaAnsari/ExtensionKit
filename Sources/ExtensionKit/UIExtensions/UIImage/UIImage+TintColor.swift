//
//  UIImage+TintColor.swift
//  
//
//  Created by Mahshid Sharif on 5/18/21.
//

import UIKit

extension UIImage {
    
    public func tintColor(_ color: UIColor) -> UIImage {
        if #available(iOS 13.0, *) {
            assertionFailure("")
            return self
        }
        
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.translateBy(x: 0, y: size.height)
        context.scaleBy(x: 1.0, y: -1.0)
        context.setBlendMode(CGBlendMode.normal)
        let rect: CGRect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        context.clip(to: rect, mask: cgImage!)
        color.setFill()
        context.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
