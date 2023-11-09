//
//  APIResponse.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 6/11/23.
//

struct APIResponse<T: Decodable>: Decodable {
    let results: [T]
}
