//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 04/01/24.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: StoreType
    
    var body: some View {
        HStack(spacing: 10) {
            Image(order.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            VStack {
                Text(order.name)
                    .font(.subheadline)
            }
           Spacer()
        }
    }
}

#Preview {
    StoreItemView(order: storesMock[0])
}
