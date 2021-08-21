//
//  FileManager+Delete.swift
//  
//
//  Created by MohammadReza Ansary on 8/17/21.
//

import Foundation

public extension FileManager {
    
    /// Delete file with given name form document directory
    ///
    /// - Parameter name: The name of the file to remove.
    /// - Warning: If FileManager paths collection is empty, will throw `URLError(.badURL)`.
    ///
    func delete(file name: String) throws {
        let documentsDirectoryPaths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        guard let directoryPath = documentsDirectoryPaths.first else {
            assertionFailure("ForDebug: documents directory collection is empty.")
            throw URLError(.badURL)
        }
        
        let fileURL = directoryPath.appendingPathComponent(name)
        
        do {
            try FileManager.default.removeItem(at: fileURL)
        }
        catch {
            print("ForDebug: deleting image catch error", error)
            throw error
        }
    }
}
