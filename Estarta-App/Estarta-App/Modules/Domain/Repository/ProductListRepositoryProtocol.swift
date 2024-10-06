//
//  ProductListRepository.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation

protocol ProductListRepository {
    func fetchProductList() async throws -> [ProductListDomainDTO]
}
