//
//  SharedURLSession.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import Foundation


final class SharedURLSession {
    
    static var shared: URLSession {
        let configuration = URLSessionConfiguration.default
        let delegate = SharedURLSessionDelegate()
        return URLSession(configuration: configuration, delegate: delegate, delegateQueue: nil)
    }
}
