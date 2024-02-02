//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 02/01/24.
//

import SwiftUI

struct ContentView: View {
    
    //
    private var service = HomeService()
    @State private var storesType: [StoreType] = []
    @State private var isLoading: Bool = true
    
    //
    var body: some View {
        NavigationView {
            VStack {
                if isLoading {
                    ProgressView()
                } else {
                    NavigationBar()
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20){
                            OrderTypeGridView()
                            CarouselTabView()
                            StoresContainerView(stores: storesType)
                        }
                    }
                }
                
                
            }
            .padding(15)
        }
        .onAppear {
            Task {
                await getStores()
            }
            getStoresWithAlamofire()
        }
    }
    
    //
    
    func getStores() async {
        do {
            let result = try await service.fetchData()
            switch result {
            case .success(let stores):
                self.storesType = stores
                self.isLoading = false
                break
            case .failure(let error):
                print(error.localizedDescription)
                self.isLoading = false
            }
        } catch {
            print(error.localizedDescription)
            self.isLoading = false
        }
    }
    
    func getStoresWithAlamofire() {
        service.fetchDataWithAlamofire {
            stores, error in
            // print(stores)
        }
    }
    
    
   
}

#Preview {
    ContentView()
        .previewLayout(.sizeThatFits)
}
