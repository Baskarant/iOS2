//
//  AcromineListViewModel.swift
//  ABS
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import Foundation

@MainActor
class AcromineListViewModel: ObservableObject {
    
    @Published var name: [AcromineViewModel] = []
    
    func search(word: String) async {
        do {
            let name = try await Webservice().getAcromine(searchTerm: word)
            self.name = name.map(AcromineViewModel.init)
        } catch {
            print(error)
        }
    }
    
}

// MOCK Data
struct AcromineViewModel {
    
    let acromine: Acromine
    
    var lf: String {
        acromine.lf
    }
    
    var freq: Int {
        acromine.freq
    }
    
    var since: Int{
        acromine.since
    }
    
}
