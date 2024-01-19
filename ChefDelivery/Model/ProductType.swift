//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 05/01/24.
//

import Foundation

struct ProductType: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formatPrice: String {
        return "R$" + price.formatPrice()
    }
    
}
