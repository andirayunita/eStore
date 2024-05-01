//
//  UsersViewModel.swift
//  eStore
//
//  Created by Andira Yunita on 26/04/24.
//

import Foundation

@MainActor
class UsersViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private let service = UserAPIService() //not singleton
    
    func loadUsers() async {
        isLoading = true
        
        do {
            let loadedUsers = try await service.fetchUsers()
            self.users = loadedUsers.reversed()
        } catch {
            let message = ErrorMessage.message(for: error)
            print("❌ Couldn't load users data: \(message) because of \(error.localizedDescription)")
            isLoading = false
        }
    }
}
