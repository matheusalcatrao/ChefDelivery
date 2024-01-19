//
//  Double+.swift
//  ChefDelivery
//
//  Created by Matheus Cepil Alcatrao on 08/01/24.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format:"%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
