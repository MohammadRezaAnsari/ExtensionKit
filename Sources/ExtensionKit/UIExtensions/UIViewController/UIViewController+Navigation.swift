//
//  UIViewController+Navigation.swift
//
//
//  Created by MohammadReza Ansary on 2/27/21.
//

import UIKit

public extension UIViewController {
    
    func navigate(to viewController: UIViewController) {
        guard navigationController != nil else {
            assertionFailure("Navigation Controller is nil.")
            return
        }
        navigationController!.pushViewController(viewController, animated: true)
    }
}
