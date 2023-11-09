//
//  CoreDataPersistenceController.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 9/11/23.
//

import CoreData

struct CoreDataPersistenceController {
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Main")
        container.loadPersistentStores { _, error in
            let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
            print(paths[0])
            if let error {
                fatalError("Error: \(error.localizedDescription)")
            }
        }
    }
}
