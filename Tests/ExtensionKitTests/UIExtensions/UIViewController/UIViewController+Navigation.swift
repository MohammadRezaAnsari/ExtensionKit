//
//  UIViewController+Navigation.swift
//  
//
//  Created by MohammadReza Ansary on 3/1/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class UIViewController_NavigationTests: XCTestCase {
    
    var viewController: UIViewController!
    var navigationController: SpyNavigationController!
    
    override func setUpWithError() throws {
        
        viewController = UIViewController()
        navigationController = SpyNavigationController(rootViewController: viewController)
        viewController.loadView()
        viewController.viewDidLoad()
    }
    
    override func tearDownWithError() throws {
        viewController = nil
        navigationController = nil
    }
    
    func testNavigatedControllerShouldBeEqualWithExceptedResult() {
        
        let tableViewController = UITableViewController()
        viewController.navigate(to: tableViewController)        
        
        let sut = navigationController.pushedViewController
        let exceptedResult = tableViewController
        XCTAssertEqual(sut, exceptedResult)
    }
}
