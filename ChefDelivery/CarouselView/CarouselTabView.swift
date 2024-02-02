//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 04/01/24.
//

import SwiftUI

struct CarouselTabView: View {
    @State private var currentIndex = 1
    
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "banner burguer", image: "barbecue-banner"),
        OrderType(id: 2, name: "brazilian meal", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "pokes banner", image: "pokes-banner")
    ]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(ordersMock) { mock in
                CarouselItemView(order: mock)
                    .tag(mock.id)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) {
                _ in
                
                withAnimation(.bouncy(duration: 1)) {
                    if currentIndex > ordersMock.count {
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
                
              
            }
        }
    }
}

#Preview {
    CarouselTabView()
}
