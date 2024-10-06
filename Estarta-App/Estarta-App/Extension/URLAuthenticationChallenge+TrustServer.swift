//
//  URLAuthenticationChallenge+TrustServer.swift
//  Estarta-App
//
//  Created by eng-oday on 05/10/2024.
//

import Foundation

extension URLAuthenticationChallenge {
    
    func trustServer(completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        if self.protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust {
            if let serverTrust = self.protectionSpace.serverTrust {
                let credential = URLCredential(trust: serverTrust)
                completionHandler(.useCredential, credential)
                return
            }
        }
        completionHandler(.performDefaultHandling, nil)
    }
}
