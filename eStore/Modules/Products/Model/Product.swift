//
//  Product.swift
//  eStore
//
//  Created by Andira Yunita on 01/05/24.
//

import Foundation

struct Product: Codable, Identifiable {
    var id: Int
    var title: String
    var price: Double
    var description: String
    var images: [String]
    var category: Category
}

extension Product {
    static var dummy: [Product] = [
        Product(
            id: 180,
            title: "Nike Air Jordans",
            price: 3000,
            description: "Limited Edition",
            images: ["https://placeimg.com/640/480/any", "https://i.imgur.com/qN0jJje.jpeg"],
            category: Category.dummy
        )
    ]
}
