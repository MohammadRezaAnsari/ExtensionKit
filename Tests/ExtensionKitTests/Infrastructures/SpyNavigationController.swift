//
//  SpyNavigationController.swift
//  
//
//  Created by MohammadReza Ansary on 3/1/21.
//

import UIKit

class SpyNavigationController: UINavigationController {
    
    var pushedViewController: UIViewController?
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        pushedViewController = viewController
        super.pushViewController(viewController, animated: true)
    }
}
