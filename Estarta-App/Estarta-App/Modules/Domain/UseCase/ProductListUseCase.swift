//
//  ProductListUseCase.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation

protocol ProductListUseCase {
    func fetchProductList() async throws -> [ProductListDomainDTO]
}


final class NormalProductListUseCase:ProductListUseCase {
    
    private let repository:ProductListRepository
    
    init(repository: ProductListRepository) {
        self.repository = repository
    }
    
    func fetchProductList() async throws -> [ProductListDomainDTO] {
        try await repository.fetchProductList()
    }
    
}
