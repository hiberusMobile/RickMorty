//
//  Episode.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

struct Episode: Identifiable, Codable {
    let id: Int
    let name: String
    
    static var example: Episode {
        .init(
            id: 1,
            name: "Pilot"
        )
    }
}
