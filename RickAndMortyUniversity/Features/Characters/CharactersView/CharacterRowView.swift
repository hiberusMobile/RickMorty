//
//  CharacterRowView.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import SwiftUI

struct CharacterRowView: View {
    let character: Character
    
    var body: some View {
        HStack {
            RemoteImage(url: character.image)
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text(character.name)
            Spacer()
        }
    }
}

#Preview {
    CharacterRowView(character: .example)
}
