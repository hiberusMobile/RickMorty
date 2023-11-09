//
//  CharactersViewModel.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

import Foundation

class CharactersViewModel: ObservableObject {
    private let getCharactersUseCase: GetCharactersUseCase
    @Published var characters = [Character]()
    @Published var showErrorMessage = false
    
    init(getCharactersUseCase: GetCharactersUseCase) {
        self.getCharactersUseCase = getCharactersUseCase
    }
    
    @MainActor
    func getCharacters() async {
        do {
            characters = try await getCharactersUseCase.execute()
        } catch {
            showErrorMessage = true
        }
    }
}
