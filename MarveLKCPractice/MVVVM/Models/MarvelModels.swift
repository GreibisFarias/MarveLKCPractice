//
//  MarvelModels.swift
//  MarveLKCPractice
//
//  Created by Greibis Farias on 5/22/25.
//

import Foundation

struct Marvel: Codable{
    var data: MarvelData
    
}

struct MarvelData: Codable{
    let results: [MarvelCharacters]
}

struct MarvelCharacters: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let thumbnail: Thumbnail
    let comics, series: Comics
    let stories: Stories
}


struct Comics: Codable {
    let available: Int
    let collectionURI: String
    let items: [ComicsItem]
    let returned: Int
}

struct ComicsItem: Codable {
    let resourceURI: String
    let name: String
}


