//
//  Bundle+BuildNumber.swift
//  
//
//  Created by MohammadReza Ansary on 3/17/21.
//

import XCTest

@testable import ExtensionKit

final class Bundle_BuildNumberTests: XCTestCase {
    
    var sut: Bundle!
    
    var testCasesForBundleBuildNumber: [(buildNumber: String, expectation: String)] = [
        (buildNumber: "1", expectation: "1"),
        (buildNumber: "1.0", expectation: "1.0"),
        (buildNumber: "", expectation: ""),
        (buildNumber: "12", expectation: "12"),
        (buildNumber: "1Beta", expectation: "1Beta"),
        (buildNumber: "124-Release", expectation: "124-Release")
    ]
    
    override func setUpWithError() throws {
        sut = SpyBundle()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testBundleBuildNumber() {
        for testCase in testCasesForBundleBuildNumber {
            (sut as? SpyBundle)?.setupSpyProperties(buildNumber: testCase.buildNumber)
            let toTest = sut.buildNumber
            XCTAssertEqual(toTest, testCase.expectation)
        }
    }
}
