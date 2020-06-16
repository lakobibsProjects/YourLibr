//
//  UITableViewExtensions.swift
//  YourLibr
//
//  Created by user166683 on 5/27/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import UIKit

extension UITableView {
    
    open func dequeueReusableCell<T>() -> T where T: UITableViewCell {
        return dequeueReusableCell(withIdentifier: String(describing: T.self)) as! T
    }
}
