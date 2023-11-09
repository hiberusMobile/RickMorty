//
//  EpisodesRepository.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 7/11/23.
//

struct EpisodesRepository {
    private let remoteService: EpisodesRemoteService
    private let localService: EpisodesLocalService
    
    init(remoteService: EpisodesRemoteService, localService: EpisodesLocalService) {
        self.remoteService = remoteService
        self.localService = localService
    }
    
    func getEpisodes() async throws -> [Episode] {
        do {
            let remoteEpisodes = try await remoteService.getEpisodes()
            try localService.save(episodes: remoteEpisodes)
            return remoteEpisodes
        } catch {
            return try localService.getEpisodes()
        }
    }
}
