//
//  ProductModule.swift
//  Estarta-App
//
//  Created by eng-oday on 05/10/2024.
//

import Foundation

final class ProductsModule {

    private let apiDataTransferService: DataTransferService
    
    init(apiDataTransferService: DataTransferService) {
        self.apiDataTransferService = apiDataTransferService
    }
    
    func generateProductListView() -> ProductListView<ProductListViewModel> {
        ProductListView(viewModel: generateProductListViewModel())
    }
    
    private func generateProductListViewModel() -> ProductListViewModel {
        ProductListViewModel(useCase: generateProductListUseCase())
    }
    
    private func generateProductListUseCase() -> ProductListUseCase {
        NormalProductListUseCase(repository: generateProductListRepository())
    }
    
    private func generateProductListRepository() -> ProductListRepository {
        NormalProductListRepository(service: generateProductListService())
    }
    
    private func generateProductListService() -> ProductListService {
        NormalProductListService(dataServiceAPI: apiDataTransferService)
    }
}
