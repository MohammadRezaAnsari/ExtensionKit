//
//  String+Distance.swift
//  
//
//  Created by MohammadReza Ansary on 12/20/21.
//

import Foundation

public extension StringProtocol {
    func distance(of element: Element) -> Int? { firstIndex(of: element)?.distance(in: self) }
    func distance<S: StringProtocol>(of string: S) -> Int? { range(of: string)?.lowerBound.distance(in: self) }
}


public extension Collection {
    func distance(to index: Index) -> Int { distance(from: startIndex, to: index) }
}


public extension String.Index {
    func distance<S: StringProtocol>(in string: S) -> Int { string.distance(to: self) }
}
