//
//  ProductListView_Previews.swift
//  Estarta-App
//
//  Created by eng-oday on 05/10/2024.
//

import Foundation

extension ProductListView_Previews {
    
    static func getViewModel() -> ProductListViewModelMock {
        return ProductListViewModelMock()
    }
    
    class ProductListViewModelMock: ProductListViewModelProtocol {
        

        var isProductsEmpty: Bool { return products.isEmpty }
        var isFailed: Bool                          = false
        var networkError: String                    = "Error"
        var title: String                           = ""
        var products: [ProductListItemViewModel]    = [.init(id: "1", name: "Notebook", price: "AED 5", image_url_thumbnails:"" ,image_url: [] , created_at: "")]
        func fetchProducts() async {}
        
        func showLoader() -> Bool {
            isProductsEmpty && isFailed
        }
    }
}
