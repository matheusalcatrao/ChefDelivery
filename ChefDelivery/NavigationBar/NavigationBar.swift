//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 04/01/24.
//

import SwiftUI
// App Sysmbols SF para buscar imagens nativas do IOS
struct NavigationBar: View {
    var body: some View {
        HStack{
            Spacer()
            Button("Av rotary, 680") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    NavigationBar()
        .previewLayout(.sizeThatFits)
        .padding(10)
}
