//
//  Date+Year.swift
//
//
//  Created by MohammadReza Ansary on 4/5/21.
//

import Foundation

extension Date {
    func year(calendar: Calendar) -> Int {
        return calendar.component(.year, from:self)
    }
    
    var year: Int {
        return Calendar.current.component(.year, from:self)
    }
}
