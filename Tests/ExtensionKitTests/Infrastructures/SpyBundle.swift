//
//  SpyBundle.swift
//  
//
//  Created by MohammadReza Ansary on 3/17/21.
//

import Foundation

class SpyBundle: Bundle {
       
    var spyShortVersion = "1.0"
    var spyBuildNumber = "1"
    
    func setupSpyProperties(shortVersion: String = "1.0", buildNumber: String = "1") {
        spyShortVersion = shortVersion
        spyBuildNumber = buildNumber
    }
    
    override var infoDictionary: [String : Any]? {
        ["CFBundleShortVersionString": spyShortVersion, "CFBundleVersion": spyBuildNumber]
    }
}
