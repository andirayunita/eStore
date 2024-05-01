//
//  User.swift
//  eStore
//
//  Created by Andira Yunita on 02/04/24.
//

import Foundation

struct User: Codable, Identifiable {
    var id: Int?
    var email: String
    var password: String
    var name: String
    var avatar: String
    var role: String?
}

extension User {
    static var dummy: User {
        User(id: 1, email: "hiya@yopmail.id", password: "qwerty", name: "Hiya", avatar: "https://i.pravatar.cc/150?img=60", role: "customer")
    }
}
