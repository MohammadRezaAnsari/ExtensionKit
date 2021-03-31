//
//  UIViewController+NavigationBar.swift
//
//
//  Created by MohammadReza Ansary on 2/27/21.
//

import UIKit

public extension UIViewController {
    
    func hideNavigationBar() {
        guard navigationController != nil else {
            assertionFailure("Navigation Controller is nil.")
            return
        }
        navigationController!.navigationBar.isHidden = true
    }
}
