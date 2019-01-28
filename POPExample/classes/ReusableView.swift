//
//  ReusableView.swift
//  POPExample
//
//  Created by Ntobeko on 2019/01/27.
//  Copyright © 2019 Ntobeko. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
