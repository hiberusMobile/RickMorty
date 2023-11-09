//
//  CharacterDetailView.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import SwiftUI

struct CharacterDetailView: View {
    let character: Character
    
    var body: some View {
        VStack {
            RemoteImage(url: character.image)
        }
    }
}

#Preview {
    CharacterDetailView(character: .example)
}
