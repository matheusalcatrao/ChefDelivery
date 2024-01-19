//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 05/01/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                StoreDetailHeaderView(store: store)
                StoreDetailProductsView(products: store.products)
                
            }
        }
        .navigationTitle(store.name)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss();
                } label : {
                    HStack {
                        Image(systemName: "cart")
                        Text("Lojas")
                    }.foregroundColor(Color("ColorRed"))
                }
            }
        }
    }
    
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
