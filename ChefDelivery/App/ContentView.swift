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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .previewLayout(.sizeThatFits)
}
