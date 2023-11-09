//
//  EpisodesRemoteService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

protocol EpisodesRemoteService {
    func getEpisodes() async throws -> [Episode]
}
