//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 08/01/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var productQuantity = 1
    
    var service = HomeService()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
           ProductDetailHeaderView(product: product)
            
        }
        Spacer()
        ProductDetailQuantityView(productQuantity: $productQuantity)
        //Text("\(productQuantity)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        Spacer()
        ProductDetailButtonView(onButtonPress: {
            Task {
                await confirmOrder()
            }
        })
    }
    
    func confirmOrder() async {
        do {
            let response = try await service.confirmOrder(product: product)
            switch response {
            case .success(let message):
                print(message)
            case .failure(let error):
                print(error.localizedDescription)
            }
        } catch {
            print(error.localizedDescription)
        }
       
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
