//
//  productListLayout.swift
//  Estarta-App
//
//  Created by eng-oday on 06/10/2024.
//

import Foundation


import SwiftUI

struct ProductListLayout: View {
    
    let items: [ProductListItemViewModel]
    
    var body: some View {
        List {
            ForEach(items, id: \.id) { item in
                NavigationLink(value: item) {
                    ProductItemView(item: item)
                }
                .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 8))
            }
        }
        .navigationDestination(for: ProductListItemViewModel.self, destination: { item in
            ProductDetailsView(item: item)
        })// Move to Product Details View
        .preferredColorScheme(.light)
    }
}


#Preview {
    ProductListLayout(items: [.init(id: "1", name: "Notebook", price: "AED 5", image_url_thumbnails:"" ,image_url: [] , created_at: "")])
}
