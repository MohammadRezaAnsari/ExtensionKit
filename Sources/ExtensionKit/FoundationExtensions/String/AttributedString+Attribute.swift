//
//  AttributedString+Attribute.swift
//  
//
//  Created by MohammadReza Ansary on 12/20/21.
//

import Foundation

public extension NSMutableAttributedString {
    func attribute(_ key: NSAttributedString.Key, value: Any, range: NSRange) -> Self {
        addAttribute(key, value: value, range: range)
        return self
    }
}
