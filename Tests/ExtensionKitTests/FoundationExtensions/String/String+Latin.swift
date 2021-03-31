//
//  String+Latin.swift
//  
//
//  Created by MohammadReza Ansary on 3/17/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class String_LatinTests: XCTestCase {
        
    var testCasesForLatingString = [
        (string: "", expectation: ""),
        (string: "first", expectation: "first"),
        (string: "2d", expectation: "2d"),
        (string: "123", expectation: "123"),
        (string: "12?d", expectation: "12?d"),
        (string: "123456789!@#$%^&*", expectation: "123456789!@#$%^&*"),
        (string: "💢", expectation: "💢"),
        (string: "سيب", expectation: "syb"),
        (string: "سيب  ", expectation: "syb  "),
        (string: "سيب ٩٢٦", expectation: "syb 926"),
        (string: "سيب /.؟.", expectation: "syb /.?."),
    ]
    
    func testLatingString() {
        for testCase in testCasesForLatingString {
            let toTest = testCase.string.latin
            XCTAssertEqual(toTest, testCase.expectation)
        }
    } 
}
