//
//  String+Size.swift
//  
//
//  Created by Mahshid Sharif on 1/19/22.
//

import UIKit

public extension String {
    
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        
        let constraintRect = CGSize(width: width,
                                    height: .greatestFiniteMagnitude)
        
        let boundingBox = self.boundingRect(with: constraintRect,
                                            options: .usesLineFragmentOrigin,
                                            attributes: [.font: font],
                                            context: nil)
        return ceil(boundingBox.height)
    }
    
    func height(withConstrainedWidth width: CGFloat, font: UIFont, lineSpacing: CGFloat) -> CGFloat {
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineSpacing = lineSpacing
        
        let constraintRect = CGSize(width: width,
                                    height: .greatestFiniteMagnitude)
        
        let boundingBox = self.boundingRect(with: constraintRect,
                                            options: .usesLineFragmentOrigin,
                                            attributes: [.font: font, .paragraphStyle: paragraphStyle],
                                            context: nil)
        return ceil(boundingBox.height)
    }
    
    func width(withConstrainedHeight height: CGFloat, font: UIFont) -> CGFloat {
        
        let constraintRect = CGSize(width: .greatestFiniteMagnitude,
                                    height: height)
        
        let boundingBox = self.boundingRect(with: constraintRect,
                                            options: .usesLineFragmentOrigin,
                                            attributes: [.font: font],
                                            context: nil)
        return ceil(boundingBox.height)
    }
    
    func width(withConstrainedHeight height: CGFloat, font: UIFont, lineSpacing: CGFloat) -> CGFloat {
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineSpacing = lineSpacing
        
        let constraintRect = CGSize(width: .greatestFiniteMagnitude,
                                    height: height)
        
        let boundingBox = self.boundingRect(with: constraintRect,
                                            options: .usesLineFragmentOrigin,
                                            attributes: [.font: font, .paragraphStyle: paragraphStyle],
                                            context: nil)
        return ceil(boundingBox.height)
    }
    
    func labelSize(maxWidth: CGFloat, font: UIFont, lineSpacing: CGFloat) -> CGSize {
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineSpacing = lineSpacing
        
        let size = CGSize(width: maxWidth, height: .greatestFiniteMagnitude)
        
        let rect = self.boundingRect(with: size,
                                     options: [.usesLineFragmentOrigin],
                                     attributes: [.font: font, .paragraphStyle: paragraphStyle],
                                     context: nil).integral
        return rect.size
    }
}
