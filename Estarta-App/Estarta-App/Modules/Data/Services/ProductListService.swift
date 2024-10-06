//
//  ProductListService.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation



protocol ProductListService {
    func fetchProductListFromNetwork() async throws -> ProductListDataDTO
}


final class NormalProductListService:ProductListService {
    
    private let dataServiceAPI:DataTransferService
    
    init(dataServiceAPI: DataTransferService) {
        self.dataServiceAPI = dataServiceAPI
    }
    
    func fetchProductListFromNetwork() async throws -> ProductListDataDTO {
        let productListNetworkRequest = DefaultNetworkRequest(path: NetworkConstant.productsEndPoint , method: .get)
        return try await dataServiceAPI.request(request: productListNetworkRequest)
    }
}
