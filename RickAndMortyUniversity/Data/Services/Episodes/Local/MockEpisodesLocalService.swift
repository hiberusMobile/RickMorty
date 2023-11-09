//
//  MockEpisodesLocalService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 7/11/23.
//

class MockEpisodesLocalService: EpisodesLocalService {
    private var episodes = [Episode]()
    
    func getEpisodes() throws -> [Episode] {
        episodes
    }
    
    func save(episodes: [Episode]) throws {
        self.episodes = episodes
    }
}
