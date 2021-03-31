//
//  UIApplication+TopViewController.swift
//
//
//  Created by MohammadReza Ansary on 2/27/21.
//

import UIKit

public extension UIApplication {
    
    func topViewController(controller: UIViewController? = nil) -> UIViewController? {
        var result = (controller == nil) ? rootViewController : controller!
        while let presentedViewController = result?.presentedViewController {
            result = presentedViewController
        }
        return result
    }
    
    var topViewController: UIViewController? {
        topViewController()
    }
}
