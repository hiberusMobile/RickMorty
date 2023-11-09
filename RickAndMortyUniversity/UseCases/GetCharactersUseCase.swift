//
//  GetCharactersUseCase.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 8/11/23.
//

struct GetCharactersUseCase {
    private let charactersRepository: CharactersRepository
    
    init(charactersRepository: CharactersRepository) {
        self.charactersRepository = charactersRepository
    }
    
    func execute() async throws -> [Character] {
        try await charactersRepository.getCharacters()
    }
}
