//
//  APPDIContainer.swift
//  Estarta-App
//
//  Created by eng-oday on 05/10/2024.
//

import Foundation


final class AppDIContainer {
    
    lazy private var apiDataTransferService: DataTransferService = {
        let config = ApiDataNetworkConfig(baseURL: NetworkConstant.ProductsBaseURL)
        let sessionManager = DefaultNetworkSessionManager(session: SharedURLSession.shared)
        let networkManager = DefaultNetworkManager(config: config, sessionManager: sessionManager)
        return DefaultDataTransferService(networkManager: networkManager)
    }()

    lazy var productListView: ProductListView = {
        let productsModule = ProductsModule(apiDataTransferService: apiDataTransferService)
        return productsModule.generateProductListView()
    }()
}
