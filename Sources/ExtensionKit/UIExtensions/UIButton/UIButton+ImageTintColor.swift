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
            let colorizedImage = imageForState.withTintColor(color)
            setImage(colorizedImage, for: state)
        }
    }
}
