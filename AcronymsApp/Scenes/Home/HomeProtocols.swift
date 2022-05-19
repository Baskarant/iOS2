//
//  HomeProtocols.swift
//  AcronymsApp
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

protocol HomeWireframeProtocol: WireframeProtocol {
}

protocol HomeViewProtocol: BaseViewProtocol {
    func reload(data: [Acronyms])
}

protocol HomePresenterProtocol: BasePresenterProtocol {
    func didLoad()
    func search(acronyms: String)
    func didReceived(data: [Acronyms])
    func didReceived(error: Error)
}

protocol HomeInteractorProtocol: BaseInteractorProtocol {
    func request(acronyms: String)
}
