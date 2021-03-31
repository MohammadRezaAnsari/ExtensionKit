//
//  URL+StaticString.swift
//  
//
//  Created by MohammadReza Ansary on 3/6/21.
//

import Foundation

public extension URL {
    
    /// Creates a URL instance from the provided static string.
    ///  - Parameter string: A static string.
    /// - Throws: This initializer throw error if the string doesn’t represent a valid URL. For example, an empty string or one containing characters that are illegal in a URL produces nil.
    /// `unsupportedURL` If removingPath returns `nil`.
    init(string: StaticString) throws {
        guard let encodedString = String(describing: string)
                .trimmingWhitespacesAndNewlines()
                .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)                ,
              let url = URL(string: encodedString) else {
            throw URLError(.unsupportedURL)
        }
        self = url
    }
    
    /// Creates a URL instance from the provided static string.
    ///  - Parameter staticString: A static string.
    /// - Throws: This initializer throw error if the string doesn’t represent a valid URL. For example, an empty string or one containing characters that are illegal in a URL produces nil.
    /// `unsupportedURL` If removingPath returns `nil`.
    init(staticString: StaticString) throws {
        try self.init(string: staticString)
    }
}
