//
//  StoreDetailProductsView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 08/01/24.
//

import SwiftUI

struct StoreDetailProductsView: View {
    @State private var selectedProduct: ProductType?
    let products: [ProductType]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding()
            
            ForEach(products) { product in
                Button {
                    //
                    selectedProduct = product
                } label: {
                    StoreDetailProductItemView(product: product)
                }
                .sheet(item: $selectedProduct) { product in
                    ProductDetailView(product: product)
                }
                
            }
        }
    }
}

#Preview {
    StoreDetailProductsView(products: storesMock[0].products)
}
