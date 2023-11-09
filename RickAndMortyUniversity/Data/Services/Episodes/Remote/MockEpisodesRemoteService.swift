//
//  MockEpisodesRemoteService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

struct MockEpisodesRemoteService: EpisodesRemoteService {
    func getEpisodes() async throws -> [Episode] {
        [
            .init(
                id: 1,
                name: "Pilot"
            ),
            .init(
                id: 28,
                name: "The Ricklantis Mixup"
            )
        ]
    }
}
