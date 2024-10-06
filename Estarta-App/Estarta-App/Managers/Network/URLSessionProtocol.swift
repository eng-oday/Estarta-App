//
//  URLSessionProtocol.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation


protocol URLSessionProtocol {
    func asyncData(for request: URLRequest) async throws -> (Data?, URLResponse?)
}
extension URLSession: URLSessionProtocol {
    
    func asyncData(for request: URLRequest) async throws -> (Data?, URLResponse?) {
        return try await self.data(for: request)
    }
}
