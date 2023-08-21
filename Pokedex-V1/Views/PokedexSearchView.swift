//
//  PokedexSearchView.swift
//  Pokedex-V1
//
//

import SwiftUI

struct PokedexSearchView: View {
    @State var pokemonName: String
    var body: some View {
        ZStack {
            Color.red
            VStack {
                SearchScreen()
                PokeSearchBar(pokemonName: $pokemonName)
                PokedexButtons()
            }
        }
    }
}

struct SearchScreen: View {
    var body: some View {
        ZStack {
            Rectangle().fill(.white).frame(width: 320, height: 430)
            Rectangle().fill(.blue).frame(width: 300, height: 400)
        }
    }
}

struct PokeSearchBar: View {
    @Binding var pokemonName: String
    var body: some View {
        TextField("Who's that Pokemon?", text: $pokemonName)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}

struct PokedexButtons: View {
    var body: some View{
        HStack {
            Circle().fill(.gray).frame(width: 100, height: 100).padding(.trailing, 100)
            
            ZStack {
            
            Rectangle().fill(.gray).frame(width: 100, height: 40)
            Rectangle().fill(.gray).frame(width: 40, height: 100)
            }
            
        }
    }
}


#Preview {
    PokedexSearchView(pokemonName: "")
}
