//
//  ProductListViewModel.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation
import Combine

protocol ProductListViewModelProtocol: ObservableObject {
    var products:[ProductListItemViewModel] {get set}
    var isFailed:Bool {get}
    var isProductsEmpty:Bool {get}
    var networkError:String {get}
    var title: String {get}
    func fetchProducts() async
    func showLoader() -> Bool
}

class ProductListViewModel:ProductListViewModelProtocol {
    @Published var isFailed                                 = false
    @Published var networkError                             = ""
    @Published var products:[ProductListItemViewModel]      = []
    var title: String                                       = AppConstant.productListTitle
    var isProductsEmpty:Bool { return products.isEmpty}
    
    private let productListUseCase: ProductListUseCase!
    init(useCase: ProductListUseCase) {
        self.productListUseCase = useCase
    }
    
    
    // This method fetches products and catches error if any
    @MainActor func fetchProducts() async {
        do {
            let productList = try await productListUseCase.fetchProductList()
            products = mapFetchedProducts(products: productList)
            isFailed = false
        } catch {
            isFailed = true
            if let error = error as? NetworkError {
                networkError = error .description
            }else {
                networkError = error.localizedDescription
            }
        }
    }
    
    // this function map  Response model to ProductListItemViewModel (what i need in UI from the response)
    private func mapFetchedProducts(products: [ProductListDomainDTO]) -> [ProductListItemViewModel] {
        products.map{ ProductListItemViewModel(id: $0.id,
                                               name: $0.name,
                                               price: $0.price,
                                               image_url_thumbnails: $0.image_url_thumbnails,
                                               image_url: $0.image_url,
                                               created_at: $0.created_at)
            
        }
    }
    
    func showLoader() -> Bool {
        return (isProductsEmpty && !isFailed)
    }
}
