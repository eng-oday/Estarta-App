//
//  ProductListRepository.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation



final class NormalProductListRepository:ProductListRepository {
    
    private let service:ProductListService
    
    init(service: ProductListService) {
        self.service = service
    }
    
    func fetchProductList() async throws -> [ProductListDomainDTO] {
        try await service.fetchProductListFromNetwork().results.map { $0.toDomain() }

    }
    
}
