//
//  NetworkRequest.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation


enum HTTPMethod: String {
    case get     = "GET"
}

protocol NetworkRequest {
    var path: String {get set}
    var method: HTTPMethod {get set}
    var headerParameters: [String: String] {get set}
    var queryParameters: [String: Any] {get set}
    var bodyParameters: [String: Any] {get set}
}

final class DefaultNetworkRequest: NetworkRequest {
    
    var path: String
    var method: HTTPMethod
    var headerParameters: [String: String]
    var queryParameters: [String: Any]
    var bodyParameters: [String: Any]
    init(path: String,
         method: HTTPMethod = .get,
         headerParameters: [String: String] = [:],
         queryParameters: [String: Any] = [:],
         bodyParameters: [String: Any] = [:]) {
        self.path = path
        self.method = method
        self.headerParameters = headerParameters
        self.queryParameters = queryParameters
        self.bodyParameters = bodyParameters
    }
}
