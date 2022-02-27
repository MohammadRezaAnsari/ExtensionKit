//
//  UICollectionView+Dequeue.swift
//  
//
//  Created by Mahshid Sharif on 2/26/22.
//

import UIKit

public extension UICollectionView {
    
    final func customDequeueReusableCell<T: UICollectionViewCell>(
        for indexPath: IndexPath,
        cellType: T.Type = T.self) -> T {
            
        guard let cell = self.dequeueReusableCell(
            withReuseIdentifier: cellType.reuseIdentifier,
            for: indexPath) as? T else {
            fatalError(
                "Failed to dequeue a cell with identifier \(cellType.reuseIdentifier) matching type \(cellType.self). "
            )
        }
        return cell
    }
    
    final func customDequeueReusableHeaderFooterView<T: UICollectionReusableView>(
        kind: SupplementaryViewKind,
        for indexPath: IndexPath,
        _ viewType: T.Type = T.self) -> T? {
            
        guard let view = self.dequeueReusableSupplementaryView(
            ofKind: kind.rawValue,
            withReuseIdentifier: viewType.reuseIdentifier,
            for: indexPath) as? T? else {
                    fatalError(
                        "Failed to dequeue a header/footer with identifier \(viewType.reuseIdentifier) "
                        + "matching type \(viewType.self). "
                    )
                }
        return view
    }
}

public enum SupplementaryViewKind {
    case header
    case footer
    
    var rawValue: String {
        switch self {
        case .header: return UICollectionView.elementKindSectionHeader
        case .footer: return UICollectionView.elementKindSectionFooter
        }
    }
}
