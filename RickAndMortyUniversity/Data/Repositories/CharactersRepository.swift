//
//  CharactersRepository.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 8/11/23.
//

struct CharactersRepository {
    private let remoteService: CharactersRemoteService
    
    init(remoteService: CharactersRemoteService) {
        self.remoteService = remoteService
    }
    
    func getCharacters() async throws -> [Character] {
        try await remoteService.getCharacters()
    }
}
