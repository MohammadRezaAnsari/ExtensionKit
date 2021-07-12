//
//  Sequence+Uniqued.swift
//  
//
//  Created by MohammadReza Ansary on 7/12/21.
//

import Foundation

public extension Sequence where Element: Hashable {
    func uniqued() -> [Element] {
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
}
