//
//  MovieDetail.swift
//  moviez
//
//  Created by Suraj Ramnani on 05/05/23.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie: movies
    var body: some View {
        VStack{
            Text(movie.title)
            ForEach(movie.genres, id: \.self)
            { genre in
                Text(genre)
            }
        }
    }
}
struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: dataModel().Film.movies[0])
        
            
    }
}
