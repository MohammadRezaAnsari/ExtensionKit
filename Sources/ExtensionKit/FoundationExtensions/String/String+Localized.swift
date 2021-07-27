//
//  String+Localized.swift
//  
//
//  Created by MohammadReza Ansary on 2/28/21.
//

import Foundation

public extension String {
    
    func localized(comment: String = "", bundle: Bundle = .main) -> Self {
            NSLocalizedString(self, bundle: bundle, comment: comment)
    }
}
