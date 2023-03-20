//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    @ObservedObject var charactersvm = DetailsViewModel()
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(charactersvm.characterData) { character in
                    NavigationLink {
                        Details(character: character)
                    }
                label: {
                    Text(character.name)
                }
                }
                
                
            }.onAppear {
                charactersvm.fetchCharacters()
            }
            .navigationTitle("Characters")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
