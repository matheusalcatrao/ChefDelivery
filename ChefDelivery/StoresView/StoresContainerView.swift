//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 04/01/24.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    @State private var ratingFilter = 0
    
    var stores: [StoreType]
    
    var filterdStores: [StoreType] {
        return stores.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.headline)
                Spacer()
                Menu("Filtrar") {
                    Button(action: {
                        ratingFilter = 0
                    }, label: {
                        Text("Limpar filtro")
                    })
                    Divider()
                    ForEach(1...5, id: \.self) { rating in
                        Button(action: {
                            ratingFilter = rating
                        }, label: {
                            if rating > 1 {
                                Text("\(rating) estrelas ou mais")
                            } else {
                                Text("\(rating) estrela ou mais")
                            }
                            
                            
                        })
                        
                        
                    }
                    
                    
                }
                .foregroundColor(.black)
            }
            
            VStack(alignment: .leading, spacing: 30) {
                
                if filterdStores.isEmpty {
                    Text("Nenhum resultado encontrado.")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                }
                
                ForEach(filterdStores) { mock in
                    NavigationLink {
                        StoreDetailView(store: mock)
                    } label: {
                        StoreItemView(order: mock)
                    }

                    
                }
            }
            .foregroundColor(.black)
           
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView(stores: storesMock)
}
