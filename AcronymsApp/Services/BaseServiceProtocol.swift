//
//  BaseService.swift
//  AcronymsApp
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import Moya

protocol BaseServiceProtocol: AnyObject {
    associatedtype Target: TargetType
    var provider: MoyaProvider<Target> {get}
}
