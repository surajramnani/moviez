//
//  CategoryItem.swift
//  moviez
//
//  Created by Suraj Ramnani on 07/05/23.
//

import SwiftUI

struct CategoryItem: View {
    var movie: movies
    var body: some View {
        if let posterUrl = URL(string: movie.posterUrl), let imageData = try? Data(contentsOf: posterUrl), let image = UIImage(data: imageData) {
            Image(uiImage: image)
                .resizable()
                .frame(width: 250,height: 250)
            Text(movie.title)
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(movie: dataModel().Film.movies[0])
    }
}
