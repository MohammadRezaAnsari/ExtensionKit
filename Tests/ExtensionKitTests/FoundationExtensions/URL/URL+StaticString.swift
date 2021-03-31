//
//  URL+StaticString.swift
//  
//
//  Created by MohammadReza Ansary on 3/7/21.
//

import XCTest

@testable import ExtensionKit

final class URLStaticStringTests: XCTestCase {
    
    var testCasesForCreatingURLWithStaticString: [(input: StaticString, expectation: String)] = [
        (input: "https://google.com/path/otherPath", expectation: "https://google.com/path/otherPath"),
        (input: "google.com", expectation: "google.com"),
        (input: "google.com   ", expectation: "google.com"),
        (input: "google.com  \n ", expectation: "google.com"),
        (input: "http://google.co.uk", expectation: "http://google.co.uk"),
        (input: "https://google.com/path/otherPath/العربیه", expectation: "https://google.com/path/otherPath/%D8%A7%D9%84%D8%B9%D8%B1%D8%A8%DB%8C%D9%87"),
        (input: "https://google.com/path/otherPath/pathWith//", expectation: "https://google.com/path/otherPath/pathWith//"),
        (input: "https://google.com/path/otherPath/pathWith?username=test&password=1234", expectation: "https://google.com/path/otherPath/pathWith?username=test&password=1234"),
        (input: "https://google.com/path/otherPath/pathWith?username=test&password=1234^@#$@//", expectation: "https://google.com/path/otherPath/pathWith?username=test&password=1234%5E@%23$@//"),
        (input: "https://google.com/path/path1234567890", expectation: "https://google.com/path/path1234567890"),
        (input: "https://username:123456@google.com:8080/path", expectation: "https://username:123456@google.com:8080/path"),
        (input: "https://google.com/path    \n  ", expectation: "https://google.com/path"),
    ]
    
    var testCaseForThrowingErrors: [(input: StaticString, expectation: URLError)] = [
        (input: "", expectation: URLError(.unsupportedURL)),
        (input: "  ", expectation: URLError(.unsupportedURL))
    ]
    
    func testCreatingURLWithStaticString() {
        for testCase in testCasesForCreatingURLWithStaticString {
            XCTAssertNoThrow(try URL(staticString: testCase.input))
            let toTest: URL = try! URL(staticString: testCase.input)
            XCTAssertEqual(toTest.absoluteString, testCase.expectation)
        }
    }
    
    func testCreatingURLWithEmptyString() {
        for testCase in testCaseForThrowingErrors {
            let staticString: StaticString = testCase.input
            XCTAssertThrowsError(try URL(string: staticString))
        }
    }
    
    func testUnsupportedURLExpectation() {
        
        for testCase in testCaseForThrowingErrors {
            let staticString: StaticString = testCase.input
            XCTAssertThrowsError(try URL(string: staticString))
            do {
                _ = try URL(string: staticString)
            } catch {
                XCTAssertNotNil(error as? URLError)
                let error = error as! URLError
                XCTAssertEqual(error.code, testCase.expectation.code)
            }
        }
    }
}
