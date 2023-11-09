//
//  StringExtensions.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 8/11/23.
//

import Foundation

extension String {
    func localized() -> String {
        NSLocalizedString(self, bundle: .main, comment: "")
    }
}
