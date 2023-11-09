//
//  EpisodesLocalService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 7/11/23.
//

protocol EpisodesLocalService {
    func getEpisodes() throws -> [Episode]
    func save(episodes: [Episode]) throws
}
