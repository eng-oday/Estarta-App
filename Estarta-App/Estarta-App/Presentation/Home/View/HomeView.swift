//
//  HomeView.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel:HomeViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.products.results) { result in
                NavigationLink(
                    destination: HomeRouter.destinationForTappedProduct(result: result)
                ) {
                    Text(result.name ?? "")
                }
                
            }.navigationTitle("Estarta")
        }.onAppear(perform: {
            
        })
        
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
