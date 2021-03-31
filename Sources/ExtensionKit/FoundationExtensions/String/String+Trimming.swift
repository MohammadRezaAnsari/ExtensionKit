//
//  String+Trimming.swift
//  
//
//  Created by MohammadReza Ansary on 3/17/21.
//


import Foundation

public extension String {
    
    /// Returns a new string made by removing from each whitespace and new lines.
    func trimmingWhitespacesAndNewlines() -> Self {
        self.components(separatedBy: .whitespacesAndNewlines).joined()
    }
}
