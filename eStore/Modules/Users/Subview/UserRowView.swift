//
//  UserRowView.swift
//  eStore
//
//  Created by Andira Yunita on 26/04/24.
//

import SwiftUI

struct UserRowView: View {
    let user: User
    
    var body: some View {
        HStack(spacing: 16) {
            AsyncImage(url: URL(string: user.avatar)) { phase in
                switch phase {
                case .success(let image):
                    image.resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                case .failure(_):
                    Color.red
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                case .empty:
                    ProgressView()
                    
                @unknown default:
                    EmptyView()
                }
            }
            
            VStack(alignment: .leading, spacing: 12) {
                Text(user.name.uppercased())
                    .font(.title)
                
                Text(user.email)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                Text(user.role ?? "Customer")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    UserRowView(user: User.dummy)
}
