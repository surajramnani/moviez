//
//  Moviez.swift
//  moviez
//
//  Created by Suraj Ramnani on 05/05/23.
//

import Foundation

struct MovieData: Codable {
    let genres: [String]
    let movies: [movies]

  
}

struct movies: Codable, Identifiable, Hashable {
    let id: Int
    let title: String
    let year: String
    let runtime: String
    let director: String
    let actors: String
    let plot: String
    let posterUrl: String
    let genres: [String]
}


