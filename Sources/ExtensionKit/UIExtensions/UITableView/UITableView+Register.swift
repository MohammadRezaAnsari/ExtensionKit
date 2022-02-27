//
//  UITableView+Register.swift
//  
//
//  Created by MohammadReza Ansary on 2/19/22.
//

import UIKit

public extension UITableView {
    
    final func customRegister<T: UITableViewCell>(cellType: T.Type) {
        self.register(cellType.self,
                      forCellReuseIdentifier: cellType.reuseIdentifier)
    }
    
    final func customRegister<T: UITableViewHeaderFooterView>(headerFooterViewType: T.Type) {
        self.register(headerFooterViewType.self,
                      forHeaderFooterViewReuseIdentifier: headerFooterViewType.reuseIdentifier)
    }
}
