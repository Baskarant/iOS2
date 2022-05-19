//
//  Builder.swift
//  AcronymsApp
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import Foundation

/// Builder protocol
protocol Builder: AnyObject {
    associatedtype TypeBuilder
    var object: TypeBuilder! { get set }
    func build() -> TypeBuilder
}
