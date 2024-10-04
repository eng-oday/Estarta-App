//
//  ProductDetailsViewModel.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation
import Combine



class ProductDetailsViewModel:ObservableObject {
    
    public let result: _Result
    
    init(result: _Result) {
        self.result = result
    }
    
}
