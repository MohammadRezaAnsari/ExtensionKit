//
//  UIView+SetHeight.swift
//  
//
//  Created by Mahshid Sharif on 2/26/22.
//

import UIKit

extension UIView {
    
    public func setHeight(_ height: CGFloat, animateTime: TimeInterval = 0) {
        
        guard let heightConstant = self.constraints.first(
            where: { $0.firstAttribute == .height && $0.relation == .equal }) else { return }
        heightConstant.constant = CGFloat(height)
        
        UIView.animate(withDuration: animateTime,
                       animations: { self.superview?.layoutIfNeeded() })
    }
}
