//
//  RemoteImage.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 8/11/23.
//

import SwiftUI
import Kingfisher

struct RemoteImage: View {
    let url: String
    
    var body: some View {
        KFImage(URL(string: url))
            .resizable()
    }
}

#Preview {
    RemoteImage(url: "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1371102402-645cff2ca5a62.jpg?crop=0.665xw:1.00xh;0.224xw,0&resize=1200:*")
}
