//
//  LiveCharactersRemoteService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import Foundation

struct LiveCharactersRemoteService: CharactersRemoteService {
    private let networkClient: NetworkClient
    
    init(networkClient: NetworkClient) {
        self.networkClient = networkClient
    }
    
    func getCharacters() async throws -> [Character] {
        let response: APIResponse<Character> = try await networkClient.get(url: "https://rickandmortyapi.com/api/character")
        return response.results
    }
}
