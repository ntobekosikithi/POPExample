//
//  imageCompress.swift
//  POPExample
//
//  Created by Ntobeko on 2019/01/27.
//  Copyright © 2019 Ntobeko. All rights reserved.
//

import Foundation
import UIKit

protocol ImageDataCompressing: fileData {
    func compress(withQuality compressionQuality: Double) -> Self?
}

extension ImageDataCompressing {
    func compress(withQuality compressionQuality: Double) -> Self? {
        guard let uiImage = UIImage.init(data: self.data) else {
            return nil
        }
        guard let jpegData = uiImage.jpegData(compressionQuality: CGFloat(compressionQuality)) else {
            return nil
        }
        return Self(name: self.name, data: jpegData)
    }
}
