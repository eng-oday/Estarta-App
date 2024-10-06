//
//  ProductListDataDTO.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation



struct ProductListDataDTO:Codable {
    let results:[ResultDataDTO]
    let pagination:PaginationKey?
}

struct ResultDataDTO:Codable, Identifiable {
    let created_at : String?
    let price : String?
    let name : String?
    let uid : String?
    let image_ids : [String]?
    let image_urls : [String]?
    let image_urls_thumbnails : [String]?

    // Identifiable requires an 'id' property, so we can map 'uid' to 'id'
    var id: String {
        return uid ?? UUID().uuidString
    }
    
    enum CodingKeys: String, CodingKey {

        case created_at = "created_at"
        case price = "price"
        case name = "name"
        case uid = "uid"
        case image_ids = "image_ids"
        case image_urls = "image_urls"
        case image_urls_thumbnails = "image_urls_thumbnails"
    }
}

extension ResultDataDTO {
     func toDomain() -> ProductListDomainDTO {
         .init(id: id,
               name: name ?? "", price: price ?? "",
               image_url_thumbnails: image_urls_thumbnails?.first ?? "", image_url: image_urls ?? [] ,
         created_at: created_at ?? "")
    }
}

struct PaginationKey:Codable {
    let key : String?
    
    enum CodingKeys: String, CodingKey {
        case key = "key"
    }
}

