//
//  UIApplication+LayoutDirection.swift
//
//
//  Created by MohammadReza Ansary on 2/27/21.
//

import UIKit

public extension UIApplication {
    
    var isRTL: Bool {
        UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft
    }
}
