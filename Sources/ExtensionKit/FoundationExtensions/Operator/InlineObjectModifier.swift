//
//  InlineObjectModifier.swift
//  
//
//  Created by MohammadReza Ansary on 5/5/21.
//

import Foundation

infix operator ..
func ..<T: AnyObject>(lhs: T, rhs:(T)->()) -> T {
    rhs(lhs)
    return lhs
}
