//
//  UIButton+ImageTintColor.swift
//  
//
//  Created by Mahshid Sharif on 5/18/21.
//

import UIKit

extension UIButton {
    func setImageTintColor(_ color: UIColor, for state: UIControl.State) {
        if let imageForState = image(for: state) {
            image(for: .normal)?.withRenderingMode(.alwaysTemplate)
            let colorizedImage = imageForState.image(withTintColor: color)
            setImage(colorizedImage, for: state)
        }
    }
}
