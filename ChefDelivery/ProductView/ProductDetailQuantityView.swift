//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 08/01/24.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    @Binding var productQuantity: Int
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .bold()
            HStack {
                Button {
                    if productQuantity > 1 {
                        productQuantity -= 1
                    }
                    
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                }
                Text("\(productQuantity)")
                    .font(.title2)
                Button {
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                }
            }
            
        }
    }
}

#Preview {
    ProductDetailQuantityView(productQuantity: .constant(1))
}
