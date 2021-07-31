//
//  UIButton+ImageTintColor.swift
//  
//
//  Created by Mahshid Sharif on 5/18/21.
//

import UIKit

extension UIButton {
    public func setImageTintColor(_ color: UIColor, for state: UIControl.State) {
        if let imageForState = image(for: state) {
            image(for: .normal)?.withRenderingMode(.alwaysTemplate)
            let colorizedImage: UIImage
            if #available(iOS 13.0, *) {
                colorizedImage = imageForState.withTintColor(color)
            } else {
                colorizedImage = imageForState.tintColor(color)
            }
            setImage(colorizedImage, for: state)
        }
    }
}
