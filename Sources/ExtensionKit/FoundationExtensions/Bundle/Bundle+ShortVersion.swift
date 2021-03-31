//
//  Bundle+ShortVersion.swift
//  
//
//  Created by MohammadReza Ansary on 3/17/21.
//

import Foundation

public extension Bundle {
    
    /// Returns an optional string made  by `CFBundleShortVersionString`
    var shortVersion: String? {
        self.infoDictionary?["CFBundleShortVersionString"] as? String
    }
}
