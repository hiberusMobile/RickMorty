//
//  CharactersView.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import SwiftUI

struct CharactersView: View {
    @StateObject private var viewModel: CharactersViewModel
    @EnvironmentObject var coordinator: Coordinator
    
    init(viewModel: CharactersViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationStack {
            List(viewModel.characters) { character in
                makeGoToDetailNavigationLink(for: character)
            }
            .task {
                await viewModel.getCharacters()
            }
            .navigationTitle("charactersList.title".localized())
            .alert(isPresented: $viewModel.showErrorMessage) {
                Alert(
                    title: Text("Error"),
                    message: Text("Se ha producido un error. Por favor, inténtalo de nuevo más tarde."),
                    dismissButton: .cancel()
                )
            }
        }
    }
    
    func makeGoToDetailNavigationLink(for character: Character) -> some View {
        NavigationLink {
            coordinator.makeCharacterDetailView(character: character)
        } label: {
            CharacterRowView(character: character)
        }
    }
}

#Preview {
    let coordinator = Coordinator(mock: true)
    return coordinator.makeCharactersView().environmentObject(coordinator)
}
