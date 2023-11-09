//
//  EpisodesViewModel.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import Foundation

class EpisodesViewModel: ObservableObject {
    private let getEpisodesUseCase: GetEpisodesUseCase
    @Published var episodes = [Episode]()
    @Published var showErrorMessage = false
    
    init(getEpisodesUseCase: GetEpisodesUseCase) {
        self.getEpisodesUseCase = getEpisodesUseCase
    }
    
    @MainActor
    func getEpisodes() async {
        do {
            episodes = try await getEpisodesUseCase.execute()
        } catch {
            showErrorMessage = true
        }
    }
}
