//
//  Bundle+BuildNumber.swift
//  
//
//  Created by MohammadReza Ansary on 3/17/21.
//

import Foundation

public extension Bundle {
    
    /// Returns an optional string made  by `CFBundleVersion`
    var buildNumber: String? {
        self.infoDictionary?["CFBundleVersion"] as? String
    }
}
