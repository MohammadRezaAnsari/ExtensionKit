//
//  String+LineSpacing.swift
//  
//
//  Created by Mahshid Sharif on 9/19/21.
//

import UIKit

public extension String {
    func withLineSpacing(_ spacing: CGFloat) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineSpacing = spacing
        attributedString.addAttribute(.paragraphStyle,
                                      value: paragraphStyle,
                                      range: NSRange(location: 0, length: self.count))
        return NSAttributedString(attributedString: attributedString)
    }
}
