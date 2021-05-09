//
//  Date+Year.swift
//
//
//  Created by MohammadReza Ansary on 4/17/21.
//

import XCTest

@testable import ExtensionKit

final class Date_YearTests: XCTestCase {
    
    var sut: Date!
    
    var testCasesForDate: [(date: String, expectation: Int)] = [
        (date: "2021-04-17T10:50:40+0000", expectation: 2021),
        (date: "2019-05-21T10:50:40+0000", expectation: 2019),
        (date: "2025-10-01T10:50:40+0000", expectation: 2025),
        (date: "1999-04-17T10:50:40+0230", expectation: 1999),
        (date: "1820-3-01T10:50:40+0000", expectation: 1820),
        (date: "21-6-1T10:50:40+0000", expectation: 21)
    ]
    
    func testDateYear() {
        for testCase in testCasesForDate {
            sut = toISODate(testCase.date)
            XCTAssertEqual(sut.year, testCase.expectation)
        }
    }
    
    func testDateYearWithCustomCalendar() {
        for testCase in testCasesForDate {
            sut = toISODate(testCase.date)
            let calendar = Calendar(identifier: .gregorian)
            XCTAssertEqual(sut.year(calendar: calendar), testCase.expectation)
        }
    }

    private func toISODate(_ date: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return dateFormatter.date(from: date)!
    }
}
