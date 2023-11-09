//
//  LiveEpisodesRemoteService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import Foundation

struct LiveEpisodesRemoteService: EpisodesRemoteService {
    private let networkClient: NetworkClient
    
    init(networkClient: NetworkClient) {
        self.networkClient = networkClient
    }
    
    func getEpisodes() async throws -> [Episode] {
        let response: APIResponse<Episode> = try await networkClient.get(url: "https://rickandmortyapi.com/api/episode")
        return response.results
    }
}
