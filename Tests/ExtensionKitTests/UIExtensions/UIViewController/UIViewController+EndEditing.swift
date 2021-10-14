//
//  UIViewController+EndEditing.swift
//  
//
//  Created by MohammadReza Ansary on 3/1/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class UIViewController_EndEditingTests: XCTestCase {
    
    var viewController: UIViewController!
    var gestureName: String = "End editing tap gesture recognizer"
    
    override func setUpWithError() throws {
        viewController = UIViewController()
    }
    
    override func tearDownWithError() throws {
        viewController = nil
    }
    
    @available(iOS 11.0, *)
    func testEndEditingAddGestureToView() {
        viewController.endEditingByTap()
        XCTAssertNotNil(viewController.view.gestureRecognizers)
        XCTAssertTrue(viewController.view.gestureRecognizers!.contains(where: { $0.name == gestureName }))
    }
    
    func testEndEditingShouldAddOnlyOneGestureToView() {
        let count = viewController.view.gestureRecognizers?.count ?? 0
        viewController.endEditingByTap()
        viewController.endEditingByTap()
        viewController.endEditingByTap()
        viewController.endEditingByTap()
        let sut = viewController.view.gestureRecognizers?.count ?? 0
        let exceptedResult = count + 1
        XCTAssertEqual(sut, exceptedResult)
    }
    
    @available(iOS 11.0, *)
    func testEndEditingGestureShouldNotCancelTouchesInView() {
        viewController.endEditingByTap()
        XCTAssertNotNil(viewController.view.gestureRecognizers)
        XCTAssertNotNil(viewController.view.gestureRecognizers!.first(where: { $0.name == gestureName }))
        XCTAssertFalse(viewController.view.gestureRecognizers!.first(where: { $0.name == gestureName })!.cancelsTouchesInView)
    }
}
