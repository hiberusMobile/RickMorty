//
//  UserDefaultsEpisodesLocalService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 7/11/23.
//

import Foundation

struct UserDefaultsEpisodesLocalService: EpisodesLocalService {
    private let episodesKey = "episodes"
    
    func getEpisodes() throws -> [Episode] {
        guard let data = UserDefaults.standard.data(forKey: episodesKey) else {
            return []
        }
        return try JSONDecoder().decode([Episode].self, from: data)
    }
    
    func save(episodes: [Episode]) throws {
        let data = try JSONEncoder().encode(episodes)
        UserDefaults.standard.set(data, forKey: episodesKey)
    }
}
