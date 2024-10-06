//
//  URLRequestCreater.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation


protocol URLRequestGenerator {
    func generateURLRequest(with config: NetworkConfigurable, from request: NetworkRequest) throws -> URLRequest
}

final class NormalURLRequestGenerator: URLRequestGenerator {
    
    /// Method to create URLRequest
    /// - Parameters:
    ///   - config: Network Config
    ///   - request: Network Request
    /// - Returns: URLRequest
    func generateURLRequest(with config: NetworkConfigurable, from request: NetworkRequest) throws -> URLRequest {
        let url = try createURL(with: config, from: request)
        var urlRequest = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        urlRequest.httpMethod = request.method.rawValue
        if !request.bodyParameters.isEmpty {
            do {
                let bodyData = try JSONSerialization.data(withJSONObject: request.bodyParameters,
                                                           options: [.prettyPrinted])
                urlRequest.httpBody = bodyData
            } catch {
                throw error
            }
        }
        config.headers.forEach { key, value in
            urlRequest.setValue(value, forHTTPHeaderField: key)
        }
        return urlRequest
    }
    
    private func createURL(with config: NetworkConfigurable, from request: NetworkRequest) throws -> URL {
        var components = URLComponents()
        
        components.scheme = "https"
        components.host = config.baseURL
        components.path = request.path.hasPrefix("/") ? request.path : "/" + request.path
        
        components.queryItems = request.queryParameters.map { URLQueryItem(name: $0, value: "\($1)") }

        // Check if the URL is valid
        guard let url = components.url else {
            print("Failed to create URL with components: \(components)")
            throw NetworkError.badURL
        }

        return url
    }

}
