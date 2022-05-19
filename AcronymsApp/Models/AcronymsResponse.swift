//
//  AcronymsResponse.swift
//  AcronymsApp
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import Foundation

// Data Model
struct Acronyms: Codable {
    let sf: String
    let lfs: [LF]
}

struct LF: Codable {
    let lf: String
    let freq: Int
    let since: Int
}
