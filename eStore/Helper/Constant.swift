//
//  Constant.swift
//  eStore
//
//  Created by Andira Yunita on 09/04/24.
//

import Foundation

struct Constant {
    static let baseURL = "https://api.escuelajs.co/api/"
    static let version = "v1"
    
    static let registerView = "Registration"
    static let usersList = "List of User"
    
    enum Endpoint {
        case users
        case productsByCategory(Int)
        
        func path() -> String {
            switch self {
            case .users:
                return "users"
            case .productsByCategory(let categoryId):
                return "/categories/\(categoryId)/products"
            }
        }
        
        func fullURLEndpoint() -> URL? {
            let fullURL = URL(string: "\(baseURL)\(version)/\(self.path())")
            return fullURL
        }
    }
}

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
    case patch = "PATCH"
}

enum FailedMessage {
    static let notConnectedToInternet = "The internet connection appears to be offline, please try again or tap refresh button."
    static let timeOut = "The network request time out."
    static let unexpected = "An unexpected network error occured."
}
