//
//  Coordinator.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import Foundation

class Coordinator: ObservableObject {
    private let charactersRepository: CharactersRepository
    private let episodesRepository: EpisodesRepository
    
    private let getEpisodesUseCase: GetEpisodesUseCase
    private let getCharactersUseCase: GetCharactersUseCase
    
    init(mock: Bool = false) {
        let networkClient = URLSessionNetworkClient()
        
        let charactersRemoteService: CharactersRemoteService = mock ? MockCharactersRemoteService() : LiveCharactersRemoteService(networkClient: networkClient)
        charactersRepository = CharactersRepository(remoteService: charactersRemoteService)
        
        let episodesRemoteService: EpisodesRemoteService = mock ? MockEpisodesRemoteService() : LiveEpisodesRemoteService(networkClient: networkClient)
        let episodesLocalService: EpisodesLocalService = mock ? MockEpisodesLocalService() : UserDefaultsEpisodesLocalService()
        
        episodesRepository = EpisodesRepository(
            remoteService: episodesRemoteService,
            localService: episodesLocalService
        )
        
        getEpisodesUseCase = GetEpisodesUseCase(episodesRepository: episodesRepository)
        getCharactersUseCase = GetCharactersUseCase(charactersRepository: charactersRepository)
    }
    
    // MARK: - EpisodesView
    func makeEpisodesView() -> EpisodesView {
        EpisodesView(viewModel: makeEpisodesViewViewModel())
    }
    
    private func makeEpisodesViewViewModel() -> EpisodesViewModel {
        .init(getEpisodesUseCase: getEpisodesUseCase)
    }
    
    // MARK: - EpisodeDetailView
    func makeEpisodeDetailView(episode: Episode) -> EpisodeDetailView {
        .init(episode: episode)
    }
    
    // MARK: - CharactersView
    func makeCharactersView() -> CharactersView {
        CharactersView(viewModel: makeCharactersViewViewModel())
    }
    
    private func makeCharactersViewViewModel() -> CharactersViewModel {
        .init(getCharactersUseCase: getCharactersUseCase)
    }
    
    // MARK: - CharacterDetailView
    func makeCharacterDetailView(character: Character) -> CharacterDetailView {
        .init(character: character)
    }
}
