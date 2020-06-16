//
//  SegueHandler .swift
//  YourLibr
//
//  Created by user166683 on 5/27/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import UIKit

protocol SegueHandler {
    
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandler where Self: UIViewController, SegueIdentifier.RawValue == String {

    func performSegue(withIdentifier segueIdentifier: SegueIdentifier, sender: AnyObject?) {
        performSegue(withIdentifier: segueIdentifier.rawValue, sender: sender)
    }

    func segueIdentifier(for segue: UIStoryboardSegue) -> SegueIdentifier {
        guard let identifier = segue.identifier, let identifierCase = SegueIdentifier(rawValue: identifier) else {
            fatalError("Invalid segue identifier \(String(describing: segue.identifier)).")
        }
        return identifierCase
    }
}

