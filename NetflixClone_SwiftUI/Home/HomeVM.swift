//
//  HomeVM.swift
//  NetflixClone_SwiftUI
//
//  Created by 김우성 on 2021/12/07.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comdy"] = exampleMovies
        movies["New Releases"] = exampleMovies
        movies["Watch It Again"] = exampleMovies
        movies["Sci-Fi Movies"] = exampleMovies
    }
}
