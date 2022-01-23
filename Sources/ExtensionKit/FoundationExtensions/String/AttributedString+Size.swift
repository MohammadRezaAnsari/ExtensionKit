//
//  AttributedString+Size.swift
//  
//
//  Created by Mahshid Sharif on 1/19/22.
//

import UIKit

public extension NSAttributedString {
    
    func height(withConstrainedWidth width: CGFloat) -> CGFloat {
        
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)
        return ceil(boundingBox.height)
    }
    
    func width(withConstrainedHeight height: CGFloat) -> CGFloat {
        
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)
        return ceil(boundingBox.height)
    }
}
