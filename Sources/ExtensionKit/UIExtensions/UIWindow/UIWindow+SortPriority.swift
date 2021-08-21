//
//  UIWindow+SortPriority.swift
//  
//
//  Created by MohammadReza Ansary on 8/21/21.
//

import UIKit

@available(iOS 13.0, *)
extension UIScene.ActivationState {
    var sortPriority: Int {
        switch self {
        case .foregroundActive: return 1
        case .foregroundInactive: return 2
        case .background: return 3
        case .unattached: return 4
        @unknown default: return 5
        }
    }
}
