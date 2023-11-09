//
//  ContentView.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 7/11/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        TabView {
            coordinator.makeEpisodesView()
                .tabItem {
                    Label("contentView.episodesTab".localized(), systemImage: "sparkles.tv")
                }
            
            coordinator.makeCharactersView()
                .tabItem {
                    Label("contentView.charactersTab", systemImage: "person.2.fill")
                }
        }
    }
}

#Preview {
    let coordinator = Coordinator(mock: true)
    return ContentView().environmentObject(coordinator)
}
