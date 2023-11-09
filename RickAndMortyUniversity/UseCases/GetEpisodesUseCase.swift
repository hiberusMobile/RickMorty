//
//  GetEpisodesUseCase.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 8/11/23.
//

struct GetEpisodesUseCase {
    private let episodesRepository: EpisodesRepository
    
    init(episodesRepository: EpisodesRepository) {
        self.episodesRepository = episodesRepository
    }
    
    func execute() async throws -> [Episode] {
        try await episodesRepository.getEpisodes()
    }
}
