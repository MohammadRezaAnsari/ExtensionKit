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
        guard !(view.gestureRecognizers?.contains(where: { $0.name == gestureName }) ?? false ) else { return }
        let gesture = UITapGestureRecognizer(target: self, action: #selector(view.endEditing(_:)))
        gesture.cancelsTouchesInView = false
        gesture.name = gestureName
        view.addGestureRecognizer(gesture)
    }
}
