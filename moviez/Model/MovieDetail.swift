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
               
                .font(.custom("American typewriter", size: 30))
                .foregroundColor(.blue)
                
            if let posterUrl = URL(string: movie.posterUrl), let imageData = try? Data(contentsOf: posterUrl), let image = UIImage(data: imageData) {
                Image(uiImage: image)
                    .resizable()
                    .frame(width: 250,height: 250)
            }
            
            else {
                Image(systemName: "popcorn.fill")
                    .resizable()
                    .frame(width: 250,height: 250)
                    
            }
            Text(movie.plot)
                .font(.custom("American typewriter", size: 20))
                .padding()
            Divider()
            Text("Genres")
                .font(.title)
                .padding(.trailing, 250)
//            ForEach(movie.genres, id: \.self)
//        { genre in
//            Text(genre)
//      }
    }
  }
}
struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: dataModel().Film.movies[101])
        
            
    }
}
