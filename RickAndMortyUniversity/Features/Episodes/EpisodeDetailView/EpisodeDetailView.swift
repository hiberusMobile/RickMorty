//
//  EpisodeDetailView.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import SwiftUI

struct EpisodeDetailView: View {
    let episode: Episode
    @State private var selected = "mono"
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        VStack {
            LottieView(loopMode: .loop, animationName: "monkey")
        }
    }
}

#Preview {
    let coordinator = Coordinator(mock: true)
    return EpisodeDetailView(episode: .example).environmentObject(coordinator)
}
