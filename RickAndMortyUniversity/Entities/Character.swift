//
//  Character.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

struct Character: Identifiable, Decodable {
    let id: Int
    let name: String
    let image: String
    
    static var example: Character {
        .init(
            id: 2,
            name: "Morty Smith",
            image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg"
        )
    }
}
