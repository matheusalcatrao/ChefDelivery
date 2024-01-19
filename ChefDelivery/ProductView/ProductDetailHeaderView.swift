//
//  ProductDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 08/01/24.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    let product: ProductType
    var body: some View {
        Image(product.image)
            .resizable()
            .scaledToFit()
            .shadow(radius: 20)

       
            Text(product.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            Text(product.description)
                .padding(.horizontal)
            Text(product.formatPrice)
                .font(.title3)
                .bold()
                .padding(.horizontal)
        
    
    }
}

#Preview {
    ProductDetailHeaderView(product: storesMock[0].products[0])
}
