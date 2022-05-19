//
//  ContentView.swift
//  ABS
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var acromineListVM = AcromineListViewModel()
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView{
            List(acromineListVM.name, id: \.lf ){
                name in Text(name.lf)
            }.listStyle(.plain)
                .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) )
                .onChange(of: searchText) { value in
                    Task.init{
                        if !value.isEmpty && value.count > 2 {
                            await acromineListVM.search(word: value)
                        } else {
                            acromineListVM.name.removeAll()
                        }
                    }
                }
            
                .navigationTitle("ACROMINE")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
