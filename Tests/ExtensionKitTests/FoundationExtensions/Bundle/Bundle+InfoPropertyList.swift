//
//  Bundle+InfoPropertyList.swift
//
//
//  Created by MohammadReza Ansary on 4/5/21.
//

import XCTest

@testable import ExtensionKit

final class Bundle_InfoPropertyListTests: XCTestCase {
    
    var sut: Bundle!

    override func setUpWithError() throws {
        sut = Bundle(for: type(of: self))
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testBundleBuildNumber() {
        let toTest = sut.infoPropertyList
        XCTAssertNotNil(toTest)
        XCTAssertGreaterThanOrEqual(toTest!.count, 1)
    }
}
