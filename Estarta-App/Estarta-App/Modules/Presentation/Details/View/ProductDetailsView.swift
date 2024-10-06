//
//  ProductDetailsView.swift
//  Estarta-App
//
//  Created by eng-oday on 06/10/2024.
//

import SwiftUI

struct ProductDetailsView: View {
    
    let item: ProductListItemViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                TabView {
                    ForEach(item.image_url, id: \.self) { image in
                        HeaderImageView(urlString: image)
                    }
                }
                .frame(height: 500) // Increase the height of the TabView
                .tabViewStyle(PageTabViewStyle())
                .padding(.vertical, 20)
                
                Text(item.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                Text("Price \(item.price)")
                    .font(.title3)
                Text("Created At \(item.created_at)")
                    .font(.caption2)
            }
            .padding(10)
            .navigationTitle(item.name)
            .navigationBarTitleDisplayMode(.inline)
        }
        .preferredColorScheme(.light)
    }

}

#Preview {
    ProductDetailsView(item: ProductListItemViewModel(id: "1", name: "Notebook", price: "AED 5", image_url_thumbnails: "", image_url: [], created_at: ""))
}
