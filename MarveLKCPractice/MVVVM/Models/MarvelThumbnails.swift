//
//  MarvelThumbnails.swift
//  MarveLKCPractice
//
//  Created by Greibis Farias on 5/24/25.
//

import Foundation

struct Thumbnail: Codable {
    let path: String
    let thumbnailExtension: Extension

    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
}

enum Extension: String, Codable {
    case jpg = "jpg"
}
