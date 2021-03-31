//
//  Bundle+ShortVersion.swift
//  
//
//  Created by MohammadReza Ansary on 3/17/21.
//

import XCTest

@testable import ExtensionKit

final class Bundle_ShortVersionTests: XCTestCase {
    
    var sut: Bundle!
    
    var testCasesForBundleShortVersion: [(shortVersion: String, expectation: String)] = [
        (shortVersion: "1", expectation: "1"),
        (shortVersion: "1.0", expectation: "1.0"),
        (shortVersion: "1.0.1.2", expectation: "1.0.1.2"),
        (shortVersion: "", expectation: ""),
        (shortVersion: "12", expectation: "12"),
        (shortVersion: "1Beta", expectation: "1Beta"),
        (shortVersion: "124-Release", expectation: "124-Release")
    ]
    
    override func setUpWithError() throws {
        sut = SpyBundle()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testBundleShortVersion() {
        for testCase in testCasesForBundleShortVersion {
            (sut as? SpyBundle)?.setupSpyProperties(shortVersion: testCase.shortVersion)
            let toTest = sut.shortVersion
            XCTAssertEqual(toTest, testCase.expectation)
        }
    }
}
