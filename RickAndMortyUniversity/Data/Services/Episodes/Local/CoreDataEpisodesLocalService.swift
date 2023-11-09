//
//  CoreDataEpisodesLocalService.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 9/11/23.
//

import CoreData

struct CoreDataEpisodesLocalService: EpisodesLocalService {
    private let container: NSPersistentContainer
    
    init(container: NSPersistentContainer) {
        self.container = container
    }
    
    func getEpisodes() throws -> [Episode] {
        let fetchRequest = CDEpisode.fetchRequest()
        let cdEpisodes = try container.viewContext.fetch(fetchRequest)
        let episodes = cdEpisodes.map { cdEpisode in
            Episode(
                id: Int(cdEpisode.id),
                name: cdEpisode.name ?? ""
            )
        }
        return episodes
    }
    
    func save(episodes: [Episode]) throws {
        let deleteFetchRequest: NSFetchRequest<NSFetchRequestResult> = CDEpisode.fetchRequest()
        let batchDeleteRequest = NSBatchDeleteRequest(fetchRequest: deleteFetchRequest)
        try container.viewContext.execute(batchDeleteRequest)
        
        try episodes.forEach { episode in
            let cdEpisode = CDEpisode(context: container.viewContext)
            cdEpisode.id = Int32(episode.id)
            cdEpisode.name = episode.name
            try container.viewContext.save()
        }
    }
}
