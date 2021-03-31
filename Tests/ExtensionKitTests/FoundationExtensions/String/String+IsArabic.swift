//
//  String+IsArabic.swift
//  
//
//  Created by MohammadReza Ansary on 3/17/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class String_IsArabicTests: XCTestCase {
        
    var testCasesForIsArabicString = [
        (string: "", expectation: false),
        (string: "first", expectation: false),
        (string: "2d", expectation: false),
        (string: "123", expectation: false),
        (string: "12?d", expectation: false),
        (string: "123456789!@#$%^&*", expectation: false),
        (string: "💢", expectation: false),
        (string: "سيب", expectation: true),
        (string: "سيب  ", expectation: true),
        (string: "سيب ٩٢٦", expectation: true),
        (string: "سيب /.؟.", expectation: true)
    ]
    
    func testIsArabicString() {
        for testCase in testCasesForIsArabicString {
            let toTest = testCase.string.isArabic
            XCTAssertEqual(toTest, testCase.expectation)
        }
    }
}

