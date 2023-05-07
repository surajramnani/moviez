//
//  Moviez.swift
//  moviez
//
//  Created by Suraj Ramnani on 05/05/23.
//

import Foundation

struct MovieData: Codable {
   
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

    
    
    var genres: Genres
    enum Genres: String,Codable,CaseIterable {
        case comedy = "Comedy"
        case fantasy = "Fantasy"
        case crime = "Crime"
        case drama = "Drama"
        case music = "Music"
        case adventure = "Adventure"
        case history = "History"
        case thriller = "Thriller"
        case animation = "Animation"
        case family = "Family"
        case mystery = "Mystery"
        case biography = "Biography"
        case  action = "Action"
        case filmnoir = "Film-Noir"
        case romance = "Romance"
        case scifi = "Sci-Fi"
        case war = "War"
        case  western = "Western"
        case horror = "Horror"
        case musical = "Musical"
        case sport = "Sport"
        
        
        
    }
    
}
