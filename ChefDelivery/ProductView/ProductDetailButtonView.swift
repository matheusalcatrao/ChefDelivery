//
//  ProductDetailButtonView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 08/01/24.
//

import SwiftUI

struct ProductDetailButtonView: View {
    var onButtonPress: () -> Void
    
    var body: some View {
        Button(action: {
            onButtonPress()
        }, label: {
            HStack {
                Image(systemName: "cart")
                Text("Enviar pedido")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x:6, y: 8)
            
        })
    }
}

#Preview {
    ProductDetailButtonView(onButtonPress: {})
}
