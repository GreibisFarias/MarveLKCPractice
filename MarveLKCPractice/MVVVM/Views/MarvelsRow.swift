//
//  SwiftUIView.swift
//  MarveLKCPractice
//
//  Created by Greibis Farias on 5/23/25.
//

import SwiftUI

struct MarvelsRow: View {
    var oli: MarvelCharacters
    var body: some View {
        
        VStack{
            
            Image(thumbneil: oli.thumbnail)
                .padding()
                .frame(width: 300, height: 250)
                .cornerRadius(20)
            
                .padding(10)
            
            Text(oli.name)
                .foregroundColor(.black)
                .font(.headline)
                .multilineTextAlignment(.center)
                .bold()
                
            
                .padding(5)

        }
//        .padding()
        .background(.gray)
        .cornerRadius(20)
    }

    
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            MarvelsRow(oli: MarvelCharacters(id: 1, name: "Ola", description: "", thumbnail:Thumbnail(path: "", thumbnailExtension: .jpg), comics: Comics(available: 1, collectionURI: "", items: [ComicsItem(resourceURI: "", name: "")], returned: 1), series: Comics(available: 1, collectionURI: "", items: [ComicsItem(resourceURI: "", name: "")], returned: 1), stories: Stories(available: 1, collectionURI: "", items: [StoriesItem(resourceURI: "", name: "", type: .cover)], returned: 2)))
        }
    }
}
