//
//  MovieRow.swift
//  moviez
//
//  Created by Suraj Ramnani on 06/05/23.
//

import SwiftUI

struct MovieRow: View {
    var movie: movies
    var body: some View {
        HStack{
            Image(systemName: "popcorn.fill")
            Text(String(movie.year))
            Text(movie.title)
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieRow(movie: dataModel().Film.movies[0])
    }
}
