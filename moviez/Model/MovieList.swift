//
//  MovieList.swift
//  moviez
//
//  Created by Suraj Ramnani on 06/05/23.
//

import SwiftUI

struct MovieList: View {
    
    var body: some View {
        VStack{
            Text("Movies")
                .font(.largeTitle)
                .padding(.trailing,250)
            NavigationStack{
                List{
                    ForEach(dataModel().Film.movies) {
                        movie in
                        NavigationLink{
                            MovieDetail(movie: movie)
                        }
                    label:{
                        MovieRow(movie: movie)
                    }
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Movies")
        }}
}
struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
