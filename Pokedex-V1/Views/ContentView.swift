//
//  ContentView.swift
//  Pokedex-V1
//
//  Created by racooper on 8/19/23.
//

import SwiftUI

struct ContentView: View {
    @State var pokemonName: String
    var body: some View {
        ZStack {
            Color.red
            VStack {
                SearchScrean()
                TextField("Who's that Pokemon?", text: $pokemonName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                HStack {
                    Circle().fill(.gray).frame(width: 100, height: 100).padding(.trailing, 100)
                    
                    ZStack {
                    
                    Rectangle().fill(.gray).frame(width: 100, height: 40)
                    Rectangle().fill(.gray).frame(width: 40, height: 100)
                    }
                    
                }
            }
        }
        .padding()
    }
}

struct SearchScrean: View {
    var body: some View {
        ZStack {
            Rectangle().fill(.white).frame(width: 320, height: 430)
            Rectangle().fill(.blue).frame(width: 300, height: 400)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pokemonName: "")
    }
}
