//
//  RickAndMortyUniversityApp.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import SwiftUI

@main
struct RickAndMortyUniversityApp: App {
    let coordinator = Coordinator()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(coordinator)
        }
    }
}
