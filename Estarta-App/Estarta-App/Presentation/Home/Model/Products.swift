//
//  Products.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation


struct Products:Codable {
    let results:[_Result]
    let pagination:PaginationKey?
}
