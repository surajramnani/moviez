//
//  ContentView.swift
//  moviez
//
//  Created by Suraj Ramnani on 05/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                MovieList()
                    .tabItem {
                        Label("Movies", systemImage: "popcorn.fill")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
