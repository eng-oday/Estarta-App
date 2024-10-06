//
//  HeaderImageView.swift
//  Estarta-App
//
//  Created by eng-oday on 06/10/2024.
//

import SwiftUI
import Kingfisher

struct HeaderImageView: View {
    
    let urlString: String
    @State var isAnimating:Bool = false

    var body: some View {
        
        ZStack {
            KFImage(URL(string: urlString))
                .placeholder {
                    Rectangle().foregroundColor(.gray)
                }
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0).opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimating ? 1 : 0.6)
        }
        .frame(height: 500)
        
        .onAppear {
            withAnimation(.easeOut(duration: 0.8)) {
                isAnimating = true
            }
        }
    }
}

