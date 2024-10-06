//
//  ProductItemView.swift
//  Estarta-App
//
//  Created by eng-oday on 06/10/2024.
//

import SwiftUI


struct ProductItemView: View {
    
    var item: ProductListItemViewModel
    
    var body: some View {
        HStack(spacing: 32) {
            ProductImageView(urlString: item.image_url_thumbnails)
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.system(size: dynamicFontSize(for: item.name)))
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Text("Price: \(item.price)")
                    .foregroundStyle(.gray)
                    .font(.callout)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .preferredColorScheme(.light)

            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    
    private func dynamicFontSize(for name: String) -> CGFloat {
        let maxFontSize: CGFloat = 16
        let minFontSize: CGFloat = 14
        let characterLimit = 20
        
        // Adjust the font size depending on the length of the name
        if name.count > characterLimit {
            let factor = CGFloat(name.count) / CGFloat(characterLimit)
            return max(minFontSize, maxFontSize / factor)
        }
        return maxFontSize
    }
}

#Preview {
    ProductItemView(item: ProductListItemViewModel(id: "1", name: "Notebook", price: "AED 5", image_url_thumbnails:"" ,image_url: [] , created_at: ""))
}
