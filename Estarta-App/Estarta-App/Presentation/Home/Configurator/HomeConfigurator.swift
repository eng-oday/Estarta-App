//
//  HomeConfigurator.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation


final class HomeConfigurator {
    
    public static func configureHomeView(with viewModel:HomeViewModel = HomeViewModel()) -> HomeView {
        let homeView = HomeView(viewModel:viewModel)
        return homeView
    }
    
}
