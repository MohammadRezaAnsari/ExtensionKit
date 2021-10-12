//
//  UIViewController+EndEditing.swift
//  
//
//  Created by MohammadReza Ansary on 2/27/21.
//

import UIKit

public extension UIViewController {
    
    func endEditingByTap() {
        let gestureName = "End editing tap gesture recognizer"
        let gesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        if #available(iOS 11.0, *) {
            guard !(view.gestureRecognizers?.contains(where: { $0.name == gestureName }) ?? false ) else { return }
            gesture.name = gestureName
        } else {
            guard !((view.gestureRecognizers?.contains(where: { $0 == gesture })  ?? false)) else { return }
        }
        
        gesture.cancelsTouchesInView = true
        view.addGestureRecognizer(gesture)
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}
