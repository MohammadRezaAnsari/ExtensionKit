//
//  Bundle+InfoPropertyList.swift
//
//
//  Created by MohammadReza Ansary on 4/5/21.
//

import Foundation

public extension Bundle {
    
    /// Returns an optional NSDictionary made  by `Info.Plist` file.
    var infoPropertyList: NSDictionary? {
        guard let file = self.path(forResource: "Info", ofType: "plist") else { return nil }
        guard let dictionary = NSDictionary(contentsOfFile: file) else { return nil }
        return dictionary
    }
}
