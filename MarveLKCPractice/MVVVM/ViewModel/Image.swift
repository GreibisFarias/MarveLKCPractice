//
//  Image.swift
//  MarveLKCPractice
//
//  Created by Greibis Farias on 5/23/25.
//

import SwiftUI

struct Image: View {
    let thumbneil: Thumbnail


    var imageUrl: URL? {
        var path = thumbneil.path
        if path.starts(with: "http://") {
            path = path.replacingOccurrences(of: "http://", with: "https://")
        }
        return URL(string: "\(path).\(thumbneil.thumbnailExtension.rawValue)")
    }
    
    

    var body: some View {
        if let url = imageUrl {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 80)

            } placeholder: {
                ProgressView()
            }
            .frame(width: 150, height: 150)
        } else {
            Text("URL inválida")
        }
    }
}
struct Image_Previews: PreviewProvider {
    static var previews: some View {
        Image(thumbneil: Thumbnail(path: "", thumbnailExtension: .jpg))
    }
}
