//
//  BinaryInteger+CGFloat.swift
//  
//
//  Created by MohammadReza Ansary on 2/28/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class BinaryInteger_CGFloatTests: XCTestCase {
    
    func testBinaryIntegerAsCGFloatWithDifferentValues() {
        let randomNum: Int = Int.random(in: Int.min...Int.max)
        let exceptedResult = CGFloat(randomNum)
        XCTAssertEqual(randomNum.cgFloat, exceptedResult)
    }
    
    // MARK: - UInt
    func testWithUIntMaxValues() {
        XCTAssertEqual(UInt.max.cgFloat, CGFloat(UInt.max))
        XCTAssertEqual(UInt8.max.cgFloat, CGFloat(UInt8.max))
        XCTAssertEqual(UInt16.max.cgFloat, CGFloat(UInt16.max))
        XCTAssertEqual(UInt32.max.cgFloat, CGFloat(UInt32.max))
        XCTAssertEqual(UInt64.max.cgFloat, CGFloat(UInt64.max))
    }

    func testWithUIntMinValues() {
        XCTAssertEqual(UInt.min.cgFloat, CGFloat(UInt.min))
        XCTAssertEqual(UInt8.min.cgFloat, CGFloat(UInt8.min))
        XCTAssertEqual(UInt16.min.cgFloat, CGFloat(UInt16.min))
        XCTAssertEqual(UInt32.min.cgFloat, CGFloat(UInt32.min))
        XCTAssertEqual(UInt64.min.cgFloat, CGFloat(UInt64.min))
    }
    
    // MARK: - Int
    func testWithIntMaxValues() {
        XCTAssertEqual(Int.max.cgFloat, CGFloat(Int.max))
        XCTAssertEqual(Int8.max.cgFloat, CGFloat(Int8.max))
        XCTAssertEqual(Int16.max.cgFloat, CGFloat(Int16.max))
        XCTAssertEqual(Int32.max.cgFloat, CGFloat(Int32.max))
        XCTAssertEqual(Int64.max.cgFloat, CGFloat(Int64.max))
    }
    
    func testWithIntMinValues() {
        XCTAssertEqual(Int.min.cgFloat, CGFloat(Int.min))
        XCTAssertEqual(Int8.min.cgFloat, CGFloat(Int8.min))
        XCTAssertEqual(Int16.min.cgFloat, CGFloat(Int16.min))
        XCTAssertEqual(Int32.min.cgFloat, CGFloat(Int32.min))
        XCTAssertEqual(Int64.min.cgFloat, CGFloat(Int64.min))
    }
}
