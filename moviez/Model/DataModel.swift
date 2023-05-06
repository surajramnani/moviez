//
//  DataModel.swift
//  moviez
//
//  Created by Suraj Ramnani on 05/05/23.
//

import Foundation

final class dataModel: ObservableObject {
    @Published var Film: MovieData = load("moviez.json")
//    
//    var genres: [String: [movies]]{
//        Dictionary(
//            grouping: Film.movies, by: {
//                $0.genres
//            }
//            )
//            
//    }
        
}
    
    func load<T:Decodable>(_ filename: String) -> T
    {
        let data: Data
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else
        {
            fatalError("Couldn't find \(filename) in bundle")
        }
        do {
            data = try Data(contentsOf: file)
            
        }
        catch {
            fatalError("Could not load data from \(filename)")
        }
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        }
        catch{
            print("Error parsing JSON data: \(error.localizedDescription)")
            fatalError("could not parse data \n\(filename)")
        }
    }
    

