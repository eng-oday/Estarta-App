//
//  ProductDetailsConfigurator.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation


final class ProductDetailsConfigurator {
    
    public static func configureProductDetailsView( with result: _Result) -> ProductDetailsView {
        let productDetailsView = ProductDetailsView(viewModel: ProductDetailsViewModel(result: result))
        return productDetailsView
    }
}
