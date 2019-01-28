//
//  Attachements.swift
//  POPExample
//
//  Created by Ntobeko on 2019/01/27.
//  Copyright © 2019 Ntobeko. All rights reserved.
//

import Foundation
import UIKit

protocol fileData{
    var name: String { get }
    var data: Data { get }
    init(name: String, data: Data)
}

protocol Attachement: fileData {
    var base64Encoded: String { get }
    init(name: String, contentsOf url: URL) throws
    func save(to url: URL) throws
}

extension Attachement {
    init(name: String, contentsOf url: URL) throws {
        let data = try Data(contentsOf: url)
        self.init(name: name, data: data)
    }
    
    func save(to url: URL) throws {
        try self.data.write(to: url)
    }
    
    var base64Encoded: String {
        return self.data.base64EncodedString()
    }
}



