//
//  StoriesRow.swift
//  MarveLKCPractice
//
//  Created by Greibis Farias on 5/24/25.
//

import SwiftUI

struct StoriesRow: View {
    var omaiga: StoriesItem
    var body: some View {
        VStack{
            Text(omaiga.name)
                .padding()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .bold()
            
        }
        
        .frame(width: 350, height:  80)
        .background(.gray)
        .cornerRadius(20)
    }
}

struct StoriesRow_Previews: PreviewProvider {
    static var previews: some View {
        StoriesRow(omaiga: StoriesItem(resourceURI: "", name: "Oap", type: ItemType .cover))
    }
}
