//
//  UIApplication+RootViewController.swift
//
//
//  Created by MohammadReza Ansary on 2/27/21.
//

import UIKit

public extension UIApplication {
    
    var rootViewController: UIViewController? {
        guard let viewController = windows.last?.rootViewController else {
            assertionFailure("UIApplication does not contain any window/rootViewController!")
            return nil
        }
        return viewController
    }
}
