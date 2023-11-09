//
//  CharactersRemoteService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

protocol CharactersRemoteService {
    func getCharacters() async throws -> [Character]
}
