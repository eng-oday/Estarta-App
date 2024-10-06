//
//  NetworkConfiguration.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation


protocol NetworkConfigurable {
    var baseURL: String { get }
    var headers: [String: String] { get }
}

class ApiDataNetworkConfig: NetworkConfigurable {
    
    let baseURL: String
    let headers: [String: String]
    
     init(baseURL: String,
        headers: [String: String] = [:]) {
        self.baseURL = baseURL
        self.headers = headers
    }
}
