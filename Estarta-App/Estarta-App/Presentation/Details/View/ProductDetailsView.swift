//
//  ProductDetailsView.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import SwiftUI

struct ProductDetailsView: View {
    
    @ObservedObject var viewModel:ProductDetailsViewModel

    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ProductDetailsView(viewModel: ProductDetailsViewModel(result: _Result.fake()))
}
