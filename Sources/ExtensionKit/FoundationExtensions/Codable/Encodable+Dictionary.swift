//
//  Encodable+Dictionary.swift
//  
//
//  Created by MohammadReza Ansary on 7/25/21.
//

import Foundation

extension Encodable {
    
    func dictionary() throws -> [String: Any] {
        let data = try JSONEncoder().encode(self)
        guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            throw NSError()
        }
        return dictionary
    }
}

