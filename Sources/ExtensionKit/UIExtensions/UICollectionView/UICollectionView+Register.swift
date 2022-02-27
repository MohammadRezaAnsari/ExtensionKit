//
//  UICollectionView+Register.swift
//  
//
//  Created by Mahshid Sharif on 2/26/22.
//

import UIKit

public extension UICollectionView {

    final func customRegister<T: UICollectionViewCell>(cellType: T.Type) {
        self.register(cellType.self,
                      forCellWithReuseIdentifier: cellType.reuseIdentifier)
    }

    final func customRegister<T: UICollectionReusableView>(headerFooterViewType: T.Type) {
        self.register(headerFooterViewType.self,
                      forCellWithReuseIdentifier: headerFooterViewType.reuseIdentifier)
    }
}
