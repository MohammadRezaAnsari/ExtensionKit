//
//  Numeric+Separation.swift
//  
//
//  Created by MohammadReza Ansary on 3/16/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class Numeric_SeparationTests: XCTestCase {
    
    var testCasesForSeparatable = [
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
        (number: 1000, expectation: "1,000"),
        (number: 1001.1, expectation: "1,001.1"),
        (number: 9999, expectation: "9,999"),
        (number: 22222, expectation: "22,222"),
        (number: 333333, expectation: "333,333"),
        (number: 4444444, expectation: "4,444,444"),
        (number: 55555555, expectation: "55,555,555"),
        (number: 666666666, expectation: "666,666,666"),
        (number: 7777777777, expectation: "7,777,777,777"),
        (number: 88888888888, expectation: "88,888,888,888"),
        (number: 999999999999, expectation: "999,999,999,999"),
        (number: 1111111111111, expectation: "1,111,111,111,111"),
        (number: 1111111111111.111, expectation: "1,111,111,111,111.111"),
        (number: 999999999999999.99, expectation: "1,000,000,000,000,000"),
        (number: 99999999999999999999.99, expectation: "100,000,000,000,000,000,000"),
    ]
    
    func testNumericSeparatableWithDifferentValues() {
        for testCase in testCasesForSeparatable {
            let toTest = testCase.number.separated()
            XCTAssertEqual(toTest, testCase.expectation)
        }
    }
    
    func testNumericSeparatableSpecialCase() {
        let number = NSNumber(bytes: UnsafeRawPointer(bitPattern: 1)!, objCType: "v")
        let toTest = number.separated()
        let expectation = "\(number)"
        XCTAssertEqual(toTest, expectation)
    }
}
