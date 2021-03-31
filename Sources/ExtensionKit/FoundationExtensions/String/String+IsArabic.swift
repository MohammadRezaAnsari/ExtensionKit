//
//  String+IsArabic.swift
//  
//
//  Created by MohammadReza Ansary on 3/17/21.
//

import Foundation

public extension String {
    
    // Evaluate string to mach Arabic regex.
    var isArabic: Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", "(?s).*\\p{Arabic}.*")
        return predicate.evaluate(with: self)
    }
}
