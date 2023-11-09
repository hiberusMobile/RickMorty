//
//  EpisodesView.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import SwiftUI

struct EpisodesView: View {
    @StateObject private var viewModel: EpisodesViewModel
    @EnvironmentObject var coordinator: Coordinator
    
    init(viewModel: EpisodesViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationStack {
            List(viewModel.episodes) { episode in
                makeGoToDetailNavigationLink(for: episode)
            }
            .navigationTitle("episodesList.title".localized())
            .task {
                await viewModel.getEpisodes()
            }
        }
    }
    
    func makeGoToDetailNavigationLink(for episode: Episode) -> some View {
        NavigationLink {
            coordinator.makeEpisodeDetailView(episode: episode)
        } label: {
            EpisodeRowView(episode: episode)
        }
    }
}

#Preview {
    let coordinator = Coordinator(mock: true)
    return coordinator.makeEpisodesView().environmentObject(coordinator)
}
