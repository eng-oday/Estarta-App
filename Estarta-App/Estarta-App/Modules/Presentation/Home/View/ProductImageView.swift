//
//  ProductImageView.swift
//  Estarta-App
//
//  Created by eng-oday on 06/10/2024.
//


import SwiftUI
import Kingfisher

struct ProductImageView: View {
    
    let urlString: String
    
    var body: some View {
        KFImage(URL(string: urlString))
            .placeholder {
                Rectangle().foregroundColor(.gray)
            }
            .resizable()
            .frame(width: 100 , height: 100)
            .scaledToFit()
            .cornerRadius(8.0)
            .preferredColorScheme(.light)
    }
}

#Preview {
    ProductImageView(urlString: "")
}
