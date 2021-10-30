//
//  UIStackView+RemoveAllArrangedSubviews.swift
//  
//
//  Created by Mattin on 10/17/21.
//

import UIKit

public extension UIStackView {
    
    func removeAllArrangedSubviews() {
            
            let removedSubviews = arrangedSubviews.reduce([]) { (allSubviews, subview) -> [UIView] in
                self.removeArrangedSubview(subview)
                return allSubviews + [subview]
            }
            
            // Deactivate all constraints
            NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))
            
            // Remove the views from self
            removedSubviews.forEach({ $0.removeFromSuperview() })
        }
}
