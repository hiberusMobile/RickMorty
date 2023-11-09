//
//  EpisodeRowView.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import SwiftUI

struct EpisodeRowView: View {
    let episode: Episode
    
    var body: some View {
        Text(episode.name)
    }
}

#Preview {
    EpisodeRowView(episode: .example)
}
