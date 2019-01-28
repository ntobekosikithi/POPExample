//
//  NibView.swift
//  POPExample
//
//  Created by Ntobeko on 2019/01/27.
//  Copyright © 2019 Ntobeko. All rights reserved.
//

import UIKit

protocol NibView: class {}

extension NibView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
