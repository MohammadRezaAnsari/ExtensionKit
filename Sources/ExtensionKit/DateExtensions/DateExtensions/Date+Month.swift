//
//  Date+Month.swift
//
//
//  Created by MohammadReza Ansary on 4/6/21.
//

import Foundation

extension Date {
    func month(calendar: Calendar) -> Int {
        return calendar.component(.month, from:self)
    }
    
    var month: Int {
        return Calendar.current.component(.month, from:self)
    }
}
