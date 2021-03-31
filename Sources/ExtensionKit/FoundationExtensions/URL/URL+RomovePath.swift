//
//  URL+RemovePath.swift
//  
//
//  Created by MohammadReza Ansary on 3/6/21.
//

import Foundation

public extension URL {
    
    /// Removes any path component.
    /// - Throws: `URLError(.badURL)` If removingPath returns `nil`.
    mutating func removePath() throws {
        guard let removedPath = removingPath(), !removedPath.absoluteString.isEmpty else {
            throw URLError(.badURL)
        }
        self = removedPath
    }
    
    /// Returns a URL constructed by removing any path component.
    func removingPath() -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.path = ""
        components?.query = nil
        return components?.url?.deletingPathExtension()
    }
}
