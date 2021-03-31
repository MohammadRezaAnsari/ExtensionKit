//
//  URL+RemovePath.swift
//  
//
//  Created by MohammadReza Ansary on 3/6/21.
//

import XCTest
import Foundation.NSObject

@testable import ExtensionKit

final class URL_RemovePathTests: XCTestCase {
        
    var testCasesRemovingPathFromURL: [(input: String, expectation: String)] = [
        (input: "https://google.com/path/otherPath", expectation: "https://google.com"),
        (input: "http://google.com/path/otherPath", expectation: "http://google.com"),
        (input: "https://google.com", expectation: "https://google.com"),
        (input: "https://google.co.uk/path", expectation: "https://google.co.uk"),
        (input: "https://google/path", expectation: "https://google"),
        (input: "https://google.com/path/otherPath/العربیه", expectation: "https://google.com"),
        (input: "https://google.com/path/otherPath/pathWith//", expectation: "https://google.com"),
        (input: "https://google.com/path/otherPath/pathWith?username=test&password=1234", expectation: "https://google.com"),
        (input: "https://google.com/path/otherPath/pathWith?username=test&password=1234^@#$@//", expectation: "https://google.com"),
        (input: "https://google.com/path/oth!@#$%^&*()+_)><MNB?±§", expectation: "https://google.com"),
        (input: "https://google.com/path/path1234567890", expectation: "https://google.com"),
        (input: "https://google.com:8080/path/path1234567890", expectation: "https://google.com:8080"),
        (input: "https://google.com:8080/path/page#num1", expectation: "https://google.com:8080"), //Fragment
        (input: "https://username:123456@google.com:8080/path", expectation: "https://username:123456@google.com:8080"),
        (input: "https://google.com/path    \n  ", expectation: "https://google.com"),
        (input: "https://google.com/path/otherPath/pathWith😍", expectation: "https://google.com")
    ]
    
    var testCasesRemovingPathFromURLThrowError: [(input: String, expectation: Error)] = [
        (input: "google.co.uk", expectation: URLError(.unsupportedURL)),
        (input: "   \n  https://google.com/path", expectation: URLError(.unsupportedURL)),
    ]
    
    func testRemovingPathFromURL() {
        for testCase in testCasesRemovingPathFromURL {
            var toTest = URL(string: testCase.input.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!
            XCTAssertNoThrow(try toTest.removePath())
            XCTAssertEqual(toTest.absoluteString, testCase.expectation)
        }
    }
    
    func testRemovingPathFromURLWithoutSchemeShouldThrowError() {
        for testCase in testCasesRemovingPathFromURLThrowError {
            var toTest = URL(string: testCase.input.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!
            XCTAssertThrowsError(try toTest.removePath())
        }
    }
}
