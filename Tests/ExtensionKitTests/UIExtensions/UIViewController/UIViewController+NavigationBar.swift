//
//  UIViewController+NavigationBar.swift
//  
//
//  Created by MohammadReza Ansary on 3/1/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class UIViewController_NavigationBarTests: XCTestCase {
    
    var viewController: UIViewController!
    var navigationController: UINavigationController!
    
    override func setUpWithError() throws {
        viewController = UIViewController()
        navigationController = UINavigationController(rootViewController: viewController)
        viewController.loadView()
        viewController.viewDidLoad()
        
    }
    
    override func tearDownWithError() throws {
        viewController = nil
        navigationController = nil
    }
    
    func testHideNavigationBarShouldHideNavigationBar() {
        viewController.hideNavigationBar()
        XCTAssertTrue(navigationController.navigationBar.isHidden)
    }
}

