//
//  CharacterListView.swift
//  MarveLKCPractice
//
//  Created by Greibis Farias on 5/22/25.
//

import SwiftUI

struct CharacterListView: View {
    
    @StateObject private var vm = MarvelViewModel()
    
    var body: some View {
        NavigationStack{
            List(vm.Characters) { oni in NavigationLink(destination: SecondView(apoco: oni)) { MarvelsRow(oli: oni)
            }
            .navigationTitle("Heroes")
            }
                .onAppear{
                    vm.fetchPersonas()
                }
        }
        
    }
}
                                                        
struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView()
        
    }
}
                                                    
