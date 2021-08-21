//
//  UIWindow+KeyWindow.swift
//  
//
//  Created by MohammadReza Ansary on 8/21/21.
//

import UIKit

public extension UIWindow {
    #if !SWIFTMESSAGES_APP_EXTENSIONS
    static var keyWindow: UIWindow? {
        if #available(iOS 13.0, *) {
            return UIApplication.shared.connectedScenes
                .sorted { $0.activationState.sortPriority < $1.activationState.sortPriority }
                .compactMap { $0 as? UIWindowScene }
                .compactMap { $0.windows.first { $0.isKeyWindow } }
                .first
        } else {
            return UIApplication.shared.keyWindow
        }
    }
    #endif
}



