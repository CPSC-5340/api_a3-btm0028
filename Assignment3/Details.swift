//
//  Details.swift
//  Assignment3
//
//  Created by Brandon  Miller on 3/19/23.
//

import SwiftUI

struct Details: View {

    var character : CharacterModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Name: " + character.name)
                    .font(.system(size: 20))
                    .padding(.horizontal)
                Text("Gender: " + character.gender)
                Text("Species: " + character.species)
                Text("Origin: " + character.origin.name)
                Text("Location: " + character.location.name)
                
            }
        }
    }
}

/*
struct Details_Previews: PreviewProvider {

    
    static var previews: some View {
        Details()
    }
} */
