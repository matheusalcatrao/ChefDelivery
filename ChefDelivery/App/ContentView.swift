//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 02/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    OrderTypeGridView()
                    CarouselTabView()
                    StoresContainerView()
                }
            }
            
        }
        .padding(15)
    }
}

#Preview {
    ContentView()
        .previewLayout(.sizeThatFits)
}
