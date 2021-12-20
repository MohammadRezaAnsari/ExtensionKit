//
//  String+Attributed.swift
//  
//
//  Created by MohammadReza Ansary on 12/20/21.
//

import Foundation

public extension String {
    var attributed: NSMutableAttributedString {
        NSMutableAttributedString(string: self)
    }
}
