//
//  String+Localized.swift
//  
//
//  Created by MohammadReza Ansary on 3/1/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class String_LocalizedTests: XCTestCase {
        
    var testCasesForLocalizedWithStringAndComment: [(string: String, comment: String, expectation: String)] = [
        (string: "string", comment: "", expectation: "string"),
        (string: "String", comment: "", expectation: "String"),
        (string: "STRING", comment: "", expectation: "STRING"),
        (string: "", comment: "comment", expectation: ""),
        (string: "string", comment: "comment", expectation: "string"),
        (string: "", comment: "", expectation: "")
    ]
    
    func testLocalizedString() {
        for testCase in testCasesForLocalizedWithStringAndComment {
            let toTest: String = testCase.string.localized(comment: testCase.comment)
            XCTAssertEqual(toTest, NSLocalizedString(testCase.string, comment: testCase.comment))
        }
    }
    
    func testLocalizedStringWithCommentShouldBeEqual() {
        XCTAssertEqual("string".localized(comment: "comment"), "string".localized(comment: ""))
        XCTAssertEqual("string".localized(), "string".localized(comment: ""))
    }
}
