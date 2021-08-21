//
//  FileManager+Save.swift
//  
//
//  Created by MohammadReza Ansary on 8/17/21.
//

import Foundation
import UIKit

public extension FileManager {
    
    /// Save file with given name to document directory
    ///
    /// - Parameter image: The image as file to be saved in locale storage.
    /// - Parameter name: The name of the file to remove.
    ///
    func save(file image: UIImage, name: String) throws -> String {
        
        let documentsDirectoryPaths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        guard let directoryPath = documentsDirectoryPaths.first else {
            assertionFailure("ForDebug: documents directory collection is empty.")
            return ""
        }
        
        let fileURL = directoryPath.appendingPathComponent(name)
        guard let data = image.jpegData(compressionQuality: 1.0) else {
            assertionFailure("ForDebug: Can not convert image to jpeg data.")
            return ""
        }
        
        guard !FileManager.default.fileExists(atPath: fileURL.path) else {
            
            // A file exist with this url.
            // Save with other name
            return try save(file: image, name: name + "\(Date())")
        }
        
        do {
            try data.write(to: fileURL)
        } catch {
            print("ForDebug: saving image catch error", error)
            throw error
        }
        
        return name
    }
    
}
