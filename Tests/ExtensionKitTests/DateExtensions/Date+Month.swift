//
//  Date+Month.swift
//
//
//  Created by MohammadReza Ansary on 4/17/21.
//

import XCTest

@testable import ExtensionKit

final class Date_MonthTests: XCTestCase {
    
    var sut: Date!
    
    var testCasesForDate: [(date: String, expectation: Int)] = [
        (date: "2021-04-17T10:50:40+0000", expectation: 4),
        (date: "2019-05-21T10:50:40+0000", expectation: 5),
        (date: "2025-10-01T10:50:40+0000", expectation: 10),
        (date: "2021-04-17T10:50:40+0230", expectation: 4),
        (date: "2021-3-01T10:50:40+0000", expectation: 3),
        (date: "2021-6-1T10:50:40+0000", expectation: 6)
    ]
    
    func testDateMonth() {
        for testCase in testCasesForDate {
            sut = toISODate(testCase.date)
            XCTAssertEqual(sut.month, testCase.expectation)
        }
    }
    
    func testDateMonthWithCustomCalendar() {
        for testCase in testCasesForDate {
            sut = toISODate(testCase.date)
            let calendar = Calendar(identifier: .gregorian)
            XCTAssertEqual(sut.month(calendar: calendar), testCase.expectation)
        }
    }

    private func toISODate(_ date: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return dateFormatter.date(from: date)!
    }
}
