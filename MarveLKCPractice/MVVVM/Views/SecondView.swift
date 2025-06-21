//
//  SecondView.swift
//  MarveLKCPractice
//
//  Created by Greibis Farias on 5/23/25.
//

import SwiftUI

struct SecondView: View {
    var apoco: MarvelCharacters
    var body: some View {
//        VStack{
            
            List(apoco.stories.items, id: \.resourceURI){storie in
                StoriesRow(omaiga: storie)
//                    .padding()
//                    .foregroundColor(.black)
//                    .scaledToFill()
//                    .bold()
//                    .multilineTextAlignment(.center)
//                //        List(apoco.comics.items, id: \.resourceURI) { comic in
//                //                   Text(comic.name)
//            }
       }
//        .background(.gray)
    }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(apoco: MarvelCharacters(id: 1, name: "Ola", description: "", thumbnail:Thumbnail(path: "", thumbnailExtension: .jpg), comics: Comics(available: 1, collectionURI: "", items: [ComicsItem(resourceURI: "", name: "")], returned: 1), series: Comics(available: 1, collectionURI: "", items: [ComicsItem(resourceURI: "", name: "")], returned: 1), stories: Stories(available: 1, collectionURI: "", items: [StoriesItem(resourceURI: "", name: "", type: .cover)], returned: 2)))
    }
}
