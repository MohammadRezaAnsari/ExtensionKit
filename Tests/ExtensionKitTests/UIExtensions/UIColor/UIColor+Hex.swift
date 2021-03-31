//
//  UIColor+Hex.swift
//  
//
//  Created by MohammadReza Ansary on 2/28/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class UIColor_HexTests: XCTestCase {
    
    var testCasesHexColor: [(input: String, alpha: CGFloat, expectation: UIColor?)] = [
        (input: "#000000", alpha: 1.0, expectation: UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)),
        (input: "#000000", alpha: 0.5, expectation: UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)),
        (input: "#000000", alpha: 0.0, expectation: UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0)),
        (input: "#123456", alpha: 1.0, expectation: UIColor(red: 18, green: 52, blue: 86, alpha: 1)),
        (input: "#123456", alpha: 0.6, expectation: UIColor(red: 18, green: 52, blue: 86, alpha: 0.6)),
        (input: "123456", alpha: 1.0, expectation: UIColor(red: 18, green: 52, blue: 86, alpha: 1))
    ]
    
    var testCasesHexColorThrowError: [(input: String, alpha: CGFloat, expectation: MachError)] = [
        (input: "##123456", alpha: 1.0, expectation: MachError(.invalidValue)),
        (input: "123456#", alpha: 1.0, expectation: MachError(.invalidValue)),
        (input: "123456##", alpha: 1.0, expectation: MachError(.invalidValue)),
        (input: "12y453", alpha: 1.0, expectation: MachError(.invalidValue))
    ]
    
    func testUIColorWithHexInput() throws {
        for testCase in testCasesHexColor {
            let toTest = try UIColor(hex: testCase.input, alpha: testCase.alpha)
            XCTAssertEqual(toTest, testCase.expectation)
        }
    }
    
    func testUIColorWithInValidHexInputShouldThrowError() throws {
        for testCase in testCasesHexColorThrowError {
            XCTAssertThrowsError(try UIColor(hex: testCase.input, alpha: testCase.alpha))
            do {
                _ = try UIColor(hex: testCase.input, alpha: testCase.alpha)
            } catch {
                XCTAssertNotNil(error as? MachError)
                let error = error as! MachError
                XCTAssertEqual(error.code, testCase.expectation.code)
            }
        }
    }
    
}
