//
//  FileManager+Load.swift
//  
//
//  Created by MohammadReza Ansary on 8/17/21.
//

import Foundation
import UIKit

public extension FileManager {
    
    
    /// Load file with given name form document directory
    ///
    /// - Parameter name: The name of the file to load.
    /// - Warning: If FileManager paths collection is empty, will return nil.
    ///
    func load(file name: String) -> UIImage? {
        
        let documentsDirectoryPaths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        guard let directoryPath = documentsDirectoryPaths.first else {
            assertionFailure("ForDebug: documents directory collection is empty.")
            return nil
        }
        
        let fileURL = directoryPath.appendingPathComponent(name)
        
        guard let image = UIImage(contentsOfFile: fileURL.path) else {
            return nil
        }
        
        return image
    }
}
