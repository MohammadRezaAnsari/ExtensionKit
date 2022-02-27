//
//  ReusableCellProtocol.swift
//  
//
//  Created by MohammadReza Ansary on 2/19/22.
//

import UIKit

protocol ReusableCellProtocol: AnyObject {
    static var reuseIdentifier: String { get }
}

extension ReusableCellProtocol {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReusableCellProtocol {}
extension UITableViewHeaderFooterView: ReusableCellProtocol {}

extension UICollectionViewCell: ReusableCellProtocol {}
extension UICollectionReusableView: ReusableCellProtocol {}
