//
//  UIAlertController+Extension.swift
//  AcronymsApp
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import Foundation

import UIKit.UIAlertController

extension UIAlertController {
    func addActions(_ actions: [UIAlertAction]) {
        for action in actions {
            addAction(action)
        }
    }
}
