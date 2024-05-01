//
//  Category.swift
//  eStore
//
//  Created by Andira Yunita on 01/05/24.
//

import Foundation

struct Category: Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
}

extension Category {
    static var dummy: Category {
        Category(id: 1, name: "Fashion", image: "fashion")
    }
}
