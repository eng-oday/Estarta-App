//
//  PaginationKey.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation


struct PaginationKey:Codable {
    let key : String?
    
    enum CodingKeys: String, CodingKey {
        case key = "key"
    }
}
