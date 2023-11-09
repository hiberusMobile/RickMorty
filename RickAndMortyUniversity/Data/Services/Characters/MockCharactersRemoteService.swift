//
//  MockCharactersRemoteService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

struct MockCharactersRemoteService: CharactersRemoteService {
    func getCharacters() async throws -> [Character] {
        [
            .init(
                id: 1,
                name: "Rick Sanchez",
                image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
            ),
            .init(
                id: 2,
                name: "Morty Smith",
                image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg"
            )
        ]
    }
}
