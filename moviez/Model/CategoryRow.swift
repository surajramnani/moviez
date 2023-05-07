//
//  CategoryRow.swift
//  moviez
//
//  Created by Suraj Ramnani on 06/05/23.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [movies]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading,15)
                .padding(.top, 5)
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment: .top, spacing: 0){
                    ForEach(items) { landmark in
                        NavigationLink {
                            MovieDetail(movie: landmark)
                        }
                    label: {
                        CategoryItem(movie: landmark)
                    }
                    }}
            }
            .frame(height: 185)
        }
    }
}
//struct CategoryRow_Previews: PreviewProvider {
// 
//    static var previews: some View {
//        let movies = dataModel().Film.movies
//                let categoryName = movies.first?.genres.first ?? ""
//                return CategoryRow(categoryName: categoryName, items: Array(movies.prefix(4)))
//            }
//        }
