//
//  ErrorView.swift
//  Estarta-App
//
//  Created by eng-oday on 06/10/2024.
//

import SwiftUI

struct ErrorView: View {
    
    let errorTitle: String
    let errorDescription: String
    let retryAction: () -> Void
    
    var body: some View {
        VStack {
            Image(systemName: AppConstant.errorImage)
                .foregroundColor(.gray)
                .padding(5)
            Text(errorTitle)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
                .padding(5)
            Text(errorDescription)
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding(5)
            Button(AppConstant.retry) {
                retryAction()
            }
            .bold()
        }
        .padding(50)
        .animation(.easeInOut, value: 0.5)
        .preferredColorScheme(.light)
    }
}

