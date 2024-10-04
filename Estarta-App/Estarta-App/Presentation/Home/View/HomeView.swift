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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
