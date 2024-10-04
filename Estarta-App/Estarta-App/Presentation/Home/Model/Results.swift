//
//  Results.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation



struct _Result:Codable, Identifiable {
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

extension _Result {
    static func fake() -> Self {
        return _Result(created_at: "2019-02-24 04:04:17.566515",
                       price: "AED 5",
                       name: "Notebook",
                       uid: "4878bf592579410fba52941d00b62f94",
                       image_ids: [""],
                       image_urls: [""],
                       image_urls_thumbnails: [""])
    }
}
