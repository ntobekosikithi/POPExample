//
//  Extensions.swift
//  POPExample
//
//  Created by Ntobeko on 2019/01/27.
//  Copyright © 2019 Ntobeko. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    func register<T: UITableViewCell & ReusableView & NibView>(_: T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell & ReusableView>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Unable to dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}
