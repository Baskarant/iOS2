//
//  Word.swift
//  ABS
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import Foundation

// MARK: - AcromineElement
struct AcromineResponse: Decodable {
    //let sf: String
    let name: [Acromine]
    
    private enum CodingKeys: String, CodingKey {
       // case sf = "sf"
        case name = "lfs"
    }
}

// MARK: - LF
struct Acromine: Decodable {
    let lf: String
    let freq, since: Int
    //let vars: [LF]?
    
    private enum CodingKeys: String, CodingKey {
        case lf = "lf"
        case freq = "freq"
        case since = "since"
    }
}
