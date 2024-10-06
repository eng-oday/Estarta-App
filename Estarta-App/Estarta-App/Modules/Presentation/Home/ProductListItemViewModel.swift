//
//  ProductListItemViewModel.swift
//  Estarta-App
//
//  Created by eng-oday on 05/10/2024.
//

import Foundation

struct ProductListItemViewModel: Hashable {
    var id: String
    var name: String
    var price: String
    var image_url_thumbnails: String
    var image_url: [String]
    let created_at : String

}

