//
//  Numeric+Abbreviation.swift
//  
//
//  Created by MohammadReza Ansary on 3/15/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class Numeric_AbbreviationTests: XCTestCase {
    
    var testCasesForAbbreviation: [(number: NSNumber, expectation: String)] = [
        (number: 0, expectation: "0"),
        (number: 1, expectation: "1"),
        (number: 1.0, expectation: "1"),
        (number: 1.2, expectation: "1.2"),
        (number: 01.1, expectation: "1.1"),
        (number: 1.234567, expectation: "1.234567"),
        (number: 99, expectation: "99"),
        (number: 100, expectation: "100"),
        (number: 101, expectation: "101"),
        (number: 134.1, expectation: "134.1"),
        (number: 999.9, expectation: "999.9"),
        (number: 1000, expectation: "1K"),
        (number: 1001.1, expectation: "1K"),
        (number: 9999, expectation: "9.9K"),
        (number: 22222, expectation: "22.2K"),
        (number: 333333, expectation: "333.3K"),
        (number: 4444444, expectation: "4.4M"),
        (number: 55555555, expectation: "55.5M"),
        (number: 666666666, expectation: "666.6M"),
        (number: 7777777777, expectation: "7.7G"),
        (number: 88888888888, expectation: "88.8G"),
        (number: 999999999999, expectation: "999.9G"),
        (number: 1111111111111, expectation: "1.1T"),
        (number: 1111111111111.111, expectation: "1.1T"),
        (number: 999999999999999.99, expectation: "1P"),
        (number: 99999999999999999999.99, expectation: "100E"),
        (number: NSNumber(value: pow(100.0, 100.0)), expectation: "Unsupported Number"),
        (number: NSNumber(value: Double.nan), expectation: "NaN"),
        (number: NSNumber(value: Double.infinity), expectation: "+ Infinity"),
    ]
    
    func testNumericAbbreviationWithDifferentValues() {
        for testCase in testCasesForAbbreviation {
            XCTAssertEqual(testCase.number.abbreviated(), testCase.expectation)
        }
    }
}
