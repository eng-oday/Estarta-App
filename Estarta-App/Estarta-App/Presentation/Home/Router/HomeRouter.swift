//
//  HomeRouter.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//


import SwiftUI

final class HomeRouter {
    
    public static func destinationForTappedProduct(result: _Result) -> some View {
        return ProductDetailsConfigurator.configureProductDetailsView(with: result)
    }
}
