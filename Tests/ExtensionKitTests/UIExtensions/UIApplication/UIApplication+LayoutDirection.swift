//
//  UIApplication+LayoutDirection.swift
//  
//
//  Created by MohammadReza Ansary on 2/28/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class UIApplication_LayoutDirectionTests: XCTestCase {
    
    var sut: Bool!
        
    override func setUpWithError() throws {
        sut = UIApplication.shared.isRTL
    }
    
    func testIsRTLWithUserInterfaceLayoutDirection() {
        XCTAssertEqual(sut, UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft)
        XCTAssertNotEqual(sut, UIApplication.shared.userInterfaceLayoutDirection == .leftToRight)
    }
}
