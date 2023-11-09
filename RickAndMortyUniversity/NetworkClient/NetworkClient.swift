//
//  NetworkClient.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 7/11/23.
//

protocol NetworkClient {
    func get<T: Decodable>(url: String) async throws -> T
}
