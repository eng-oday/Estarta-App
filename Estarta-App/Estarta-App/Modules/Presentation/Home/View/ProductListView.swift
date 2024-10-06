//
//  ProductListView.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import SwiftUI

struct ProductListView<ViewModel>: View where ViewModel: ProductListViewModelProtocol {
    
    @ObservedObject private var viewModel:ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationStack {
            if viewModel.showLoader() {
                ProgressView()
                    .progressViewStyle(.circular)
            } else {
                ProductListLayout(items: viewModel.products)
                    .overlay {
                        if viewModel.isFailed {
                            ErrorView(errorTitle: AppConstant.errorTitle, errorDescription: viewModel.networkError) {
                                Task {
                                    await fetchProducts()
                                }
                            }
                        }
                    }
                    .navigationTitle(viewModel.title)
            }
        }
        .task {
            await fetchProducts()
        }
    }
    
    private func fetchProducts() async {
        await viewModel.fetchProducts()
    }
    
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(viewModel: ProductListView_Previews.getViewModel())
    }
}
