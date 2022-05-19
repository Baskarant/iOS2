//
//  UIView+Extension.swift
//  AcronymsApp
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import UIKit.UIView

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
    func addSubviews(_ views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }
}
